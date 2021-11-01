#!/usr/bin/env python

import rospy
from planning.msg import Command
import random

def Compute_Coherency():
    rospy.init_node('Compute_Coherency', anonymous=True)

    pub_command = rospy.Publisher("command_coherent", Command, queue_size=1)
    def on_command(command):
        v, a = command.speed, command.angle
        # Read the data forwarded by the Compute_velocity node
        rospy.loginfo(f"Received Command {v}, {a}")
        # Check that the values make sense
        if v < 0:
            v = random.random() * 130
        elif v > 130:
            v = random.random() * 130

        if a < 0:
            a = random.random() * 180
        elif a > 180:
            a = random.random() * 180
        rospy.loginfo(f"Command after coherency check: {v}, {a}")
        # Forward the Command to the Execution node
        pub_command.publish(v, a)

    rospy.Subscriber("command", Command, on_command)

    rospy.spin()

if __name__ == '__main__':
    random.seed(420)
    try:
        Compute_Coherency()
    except rospy.ROSInterruptException:
        pass