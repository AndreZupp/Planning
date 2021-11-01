#!/usr/bin/env python3

from os import stat
import rospy
from planning.msg import Car_info, State_machine, Ray_cast, Track_map, Command
import sys

from rospy.timer import sleep

def talker():
    # pub = rospy.Publisher('commands', Command, queue_size=1)
    pub_car_info = rospy.Publisher('CarInfo', Car_info, queue_size=1)
    pub_state_machine = rospy.Publisher('StateMachine', State_machine, queue_size=1)
    pub_track_map = rospy.Publisher('TrackMap', Track_map, queue_size=1)
    pub_raycast = rospy.Publisher('RayCast', Ray_cast, queue_size=1)

    rospy.init_node('Sensory', anonymous=True)
    while not rospy.is_shutdown():
        # car-info message
        speed = 3
        angle = 2
        cpu_temp = 90
        eng_temp = 90
        brake_temp = 90
        fuel = 0
        rospy.loginfo("Sending car-info message: " + str(speed) + ' ' + str(angle))
        pub_car_info.publish(speed, angle, cpu_temp, eng_temp, brake_temp, fuel)

        # state-machine message
        state = "drunk"
        rospy.loginfo("Sending state-machine message: " + str(state))
        pub_state_machine.publish(state)

        # track-map message
        map = [[i*5 + x for x in range(5)] for i in range(5)]
        x, y = 0,0
        rospy.loginfo("Sending track-map message: " + str(x) + " " + str(y) + " " + "map")
        pub_track_map.publish(map, x, y)
        
        # raycast message
        ray = [i for i in range(120)]
        rospy.loginfo("Sending raycast message: " + "ray")
        pub_raycast.publish(ray)

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass