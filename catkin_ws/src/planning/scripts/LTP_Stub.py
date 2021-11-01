#!/usr/bin/env python
import rospy
from planning.msg import Ltp_stub_data, Car_info, State_machine

# car_info_msg:
#   float32 speed 
#   float32 angle
#   int8 cpu_temperature
#   int8 engine_temperature
#   int8 brake_temperature
#   float32 fuel_level
def on_car_info_msg(car_info_msg):
    global state
    state['car_info'] = {
        'speed': car_info_msg.speed,
        'angle': car_info_msg.angle,
        'cpu_temperature': car_info_msg.cpu_temperature,
        'engine_temperature': car_info_msg.engine_temperature,
        'brake_temperature': car_info_msg.brake_temperature,
        'fuel_level': car_info_msg.fuel_level,
    }
    rospy.loginfo(rospy.get_caller_id() + f"Received car_info_msg")


# state_machine_msg:
#   string state
def on_state_machine_msg(state_machine_msg):
    global state
    state['state_machine'] = {
        'state': state_machine_msg.state
    }
    rospy.loginfo(rospy.get_caller_id() + f"Received state_machine_msg")


def listener():
    rospy.init_node('Ltp_Stub_node', anonymous=True)
    global state

    pub_stub_data = rospy.Publisher("ltp_stub_data", Ltp_stub_data, queue_size=1)

    rospy.Subscriber("CarInfo", Car_info, on_car_info_msg)
    rospy.Subscriber("StateMachine", State_machine, on_state_machine_msg)

    while not rospy.is_shutdown():
        # Check if we receieved all the data
        if 'car_info' in state and 'state_machine' in state and 'track_map' in state:
            # Forward data to 'Compute_velocity' node

            # Create a Ltp_sub_data.msg containing
            #   Car_info car_info
            #   State_machine state_machine
            track_map      = track_map(*state['track_map'].values())
            state_machine  = State_machine(*state['state_machine'].values())
            car_info       = Car_info(*state['car_info'].values())
            car_position   = Car_position(*state['car_position'].values())
            
            pub_stub_data.publish(track_map, state_machine, car_info, car_position)
            # Reset state
            state = {}
 
if __name__ == '__main__':
    global state
    state = {}
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
    