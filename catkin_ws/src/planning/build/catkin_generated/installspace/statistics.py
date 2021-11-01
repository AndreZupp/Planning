#!/usr/bin/env python3
import rospy
from rosgraph_msgs.msg import TopicStatistics

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + f"STAT {data}")
     
def listener():
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("statistics", TopicStatistics, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
 
if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass