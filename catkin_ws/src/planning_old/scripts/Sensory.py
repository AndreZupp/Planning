#!/usr/bin/env python

import rospy
from planning.msg import Car_info, State_machine, Ray_cast, Track_map, Command
import sys

def talker():
    pub = rospy.Publisher('commands', Command, queue_size=1)
    pub_car_info = rospy.Publisher('CarInfo', Car_info, queue_size=1)
    pub_state_machine = rospy.Publisher('StateMachine', State_machine, queue_size=1)
    pub_track_map = rospy.Publisher('TrackMap', Track_map, queue_size=1)
    pub_raycast = rospy.Publisher('RayCast', Ray_cast, queue_size=1)

    rospy.init_node('Sensory', anonymous=True)
    rate = rospy.Rate(2**32-1) # 1hz
    while not rospy.is_shutdown():
        speed = 3
        angle = 2
        rospy.loginfo(str(speed) + ' ' + str(angle))
        pub.publish(speed, angle)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass