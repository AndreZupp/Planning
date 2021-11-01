#!/usr/bin/env python
import rospy

def listener():
    print("Hello World!") 
    #TODO: ?
 
if __name__ == '__main__':
    global state
    state = {}
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
    