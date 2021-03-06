#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from planning.msg import Command

def talker():
    pub = rospy.Publisher('commands', Command, queue_size=10)
    rospy.init_node('Compute_Velocity', anonymous=True)
    rate = rospy.Rate(1) # 1hz
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