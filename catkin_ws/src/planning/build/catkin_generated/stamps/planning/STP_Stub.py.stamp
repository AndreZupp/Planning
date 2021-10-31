#!/usr/bin/env python
import rospy
from planning.msg import Stp_stub_data, Car_info, Ray_cast, State_machine

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


# ray_cast_msg
#    float32[120] raycast
def on_ray_cast_msg(ray_cast_msg):
    global state
    state['ray_cast'] = {
        'raycast': ray_cast_msg.raycast
    }
    rospy.loginfo(rospy.get_caller_id() + f"Received ray_cast_msg")


def listener():
    rospy.init_node('STP_Stub_node', anonymous=True)
    global state

    pub_stub_data = rospy.Publisher("stp_stub_data", Stp_stub_data, queue_size=1)

    rospy.Subscriber("CarInfo", Car_info, on_car_info_msg)
    rospy.Subscriber("StateMachine", State_machine, on_state_machine_msg)
    rospy.Subscriber("RayCast", Ray_cast, on_ray_cast_msg)
    # TODO: Define msg from LTP to STP

    while not rospy.is_shutdown():
        # Check if we receieved all the data
        if 'car_info' in state and 'state_machine' in state and 'ray_cast' in state:
            # Forward data to 'Compute_velocity' node

            # Create a Stp_sub_data.msg containing
            #   Ray_cast ray_cast
            #   State_machine state_machine
            #   Car_info car_info
            ray_cast      = Ray_cast(*state['ray_cast'].values())
            state_machine = State_machine(*state['state_machine'].values())
            car_info      = Car_info(*state['car_info'].values())
            
            pub_stub_data.publish(ray_cast, state_machine, car_info)
            # Reset state
            state = {}
 
if __name__ == '__main__':
    global state
    state = {}
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
    