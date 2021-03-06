#!/usr/bin/env python3
import rospy
from planning.msg import Command

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + f"Car plan: speed -> {data.speed}, angle -> {data.angle}")
     
def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("command_coherent", Command, callback)
    rospy.spin()
 
if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass