#!/usr/bin/env python3
import rospy
import random
import time
from planning.msg import Stp_stub_data, Command

def Compute_Velocity():
    rospy.init_node('Compute_Velocity', anonymous=True)

    pub_command = rospy.Publisher("command", Command, queue_size=1)

    def on_stub_data(stp_stub_data):
        # Read the data forwarded by the STP_Stub Node
        ray_cast, state_machine, car_info = stp_stub_data.ray_cast, stp_stub_data.state_machine, stp_stub_data.car_info
        rospy.loginfo(rospy.get_caller_id() + f"Received stub data {state_machine.state}")
        
        # Compute command based on data
        # Simulate computational delay
        time.sleep(0.1)
        speed = random.randint(-180, 300)
        angle = random.randint(-150, 150)
        # Forward the Command to the compute_coherency node
        rospy.loginfo(str(speed) + ' ' + str(angle))
        pub_command.publish(speed, angle)

    rospy.Subscriber("stp_stub_data", Stp_stub_data, on_stub_data)        
    rospy.spin()

if __name__ == '__main__':
    try:
        Compute_Velocity()
    except rospy.ROSInterruptException:
        pass