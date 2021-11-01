#!/usr/bin/env python

import rospy
from planning.msg import Ltp_stub_data, Ltp_plan
import random


# track_map_msg
#    uint8[] track_map
def on_track_map_msg(track_map_msg):
    global state
    state['track_map'] = {
        'track_map': track_map_msg.track_map,
    }
    rospy.loginfo(rospy.get_caller_id() + f"Received track_map_msg")


# car_position_msg
#    uint32 car_position_x
#    uint32 car_position_y
def on_car_position_msg(car_position_msg):
    global state
    state['car_position'] = {
        'car_position_x': car_position_msg.car_position_x,
        'car_position_y': car_position_msg.car_position_y
    }
    rospy.loginfo(rospy.get_caller_id() + f"Received car_position_msg")


def Compute_optimal_positions():
    rospy.init_node('Compute_optimal_positions', anonymous=True)

    pub_ltp_plan = rospy.Publisher("LtpPlan", ltp_plan, queue_size=1)

    rospy.Subscriber("TrackMap", Ray_cast, on_track_map_msg)
    rospy.Subscriber("CarPosition", Car_position, on_car_position_msg)

    # Ltp_stub_data.msg
    #   Car_info car_info
    #   Track_map map
    #   State_machine state_machine
    #   Car_position car_position
    def on_ltp_stub_data(ltp_stub_data):
        # Read the data forwarded by the ltp_Stub Node
        ray_cast, state_machine, car_info = ltp_stub_data.ray_cast, ltp_stub_data.state_machine, ltp_stub_data.car_info
        car_info, track_map, 
        rospy.loginfo(rospy.get_caller_id() + f"Received stub data {state_machine.state}")
        # Compute ltp_plan based on data
        speed = random.randint(-180, 300)
        angle = random.randint(-150, 150)
        # Forward the ltp_plan to the compute_coherency node
        rospy.loginfo(str(speed) + ' ' + str(angle))
        pub_ltp_plan.publish(speed, angle)

    
    rospy.Subscriber("ltp_stub_data", Ltp_stub_data, on_ltp_stub_data)
        
    rospy.spin()

if __name__ == '__main__':
    global state
    state = {}
    try:
        Compute_optimal_positions()
    except rospy.ROSInterruptException:
        pass