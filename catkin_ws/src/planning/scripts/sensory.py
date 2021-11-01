#!/usr/bin/env python
import rospy
from planning.msg import Car_info, State_machine, Ray_cast, Track_map, Car_position

def talker():
    pub_car_info = rospy.Publisher('CarInfo', Car_info, queue_size=1)
    pub_state_machine = rospy.Publisher('StateMachine', State_machine, queue_size=1)
    pub_track_map = rospy.Publisher('TrackMap', Track_map, queue_size=1)
    pub_car_position = rospy.Publisher('CarPosition', Car_position, queue_size=1)
    pub_raycast = rospy.Publisher('RayCast', Ray_cast, queue_size=1)

    rospy.init_node('Sensory', anonymous=True)
    # 10hz -> 10 FPS
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        # car_info_msg:
        #   float32 speed 
        #   float32 angle
        #   int8 cpu_temperature
        #   int8 engine_temperature
        #   int8 brake_temperature
        #   float32 fuel_level
        speed = 3
        angle = 2
        cpu_temp = 90
        eng_temp = 90
        brake_temp = 90
        fuel = 0
        rospy.loginfo("Sending car-info message: " + str(speed) + ' ' + str(angle))
        pub_car_info.publish(speed, angle, cpu_temp, eng_temp, brake_temp, fuel)

        # state_machine_msg:
        #   string state
        state = "drunk"
        rospy.loginfo("Sending state-machine message: " + str(state))
        pub_state_machine.publish(state)

        # track_map_msg
        #   uint8[] track_map
        map = [[i*5 + x for x in range(5)] for i in range(5)]
        x, y = 0,0
        rospy.loginfo("Sending track-map message: " + str(x) + " " + str(y) + " " + "map")
        pub_track_map.publish(map)

        # car_position_msg
        #   uint32 car_position_x
        #   uint32 car_position_y
        car_x, car_y = 10,9
        rospy.loginfo("Sending car_position message: " + str(x) + " " + str(y) + " " + "car_position")
        pub_car_position.publish(car_x, car_y)
        
        # ray_cast_msg
        #    float32[120] raycast
        ray = [i for i in range(120)]
        rospy.loginfo("Sending raycast message: " + "ray")
        pub_raycast.publish(ray)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass