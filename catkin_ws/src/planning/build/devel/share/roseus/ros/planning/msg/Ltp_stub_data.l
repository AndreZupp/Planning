;; Auto-generated. Do not edit!


(when (boundp 'planning::Ltp_stub_data)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Ltp_stub_data (find-package "PLANNING")))
(unless (find-package "PLANNING::LTP_STUB_DATA")
  (make-package "PLANNING::LTP_STUB_DATA"))

(in-package "ROS")
;;//! \htmlinclude Ltp_stub_data.msg.html


(defclass planning::Ltp_stub_data
  :super ros::object
  :slots (_car_info _map _state_machine _car_position ))

(defmethod planning::Ltp_stub_data
  (:init
   (&key
    ((:car_info __car_info) (instance planning::Car_info :init))
    ((:map __map) (instance planning::Track_map :init))
    ((:state_machine __state_machine) (instance planning::State_machine :init))
    ((:car_position __car_position) (instance planning::Car_position :init))
    )
   (send-super :init)
   (setq _car_info __car_info)
   (setq _map __map)
   (setq _state_machine __state_machine)
   (setq _car_position __car_position)
   self)
  (:car_info
   (&rest __car_info)
   (if (keywordp (car __car_info))
       (send* _car_info __car_info)
     (progn
       (if __car_info (setq _car_info (car __car_info)))
       _car_info)))
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:state_machine
   (&rest __state_machine)
   (if (keywordp (car __state_machine))
       (send* _state_machine __state_machine)
     (progn
       (if __state_machine (setq _state_machine (car __state_machine)))
       _state_machine)))
  (:car_position
   (&rest __car_position)
   (if (keywordp (car __car_position))
       (send* _car_position __car_position)
     (progn
       (if __car_position (setq _car_position (car __car_position)))
       _car_position)))
  (:serialization-length
   ()
   (+
    ;; planning/Car_info _car_info
    (send _car_info :serialization-length)
    ;; planning/Track_map _map
    (send _map :serialization-length)
    ;; planning/State_machine _state_machine
    (send _state_machine :serialization-length)
    ;; planning/Car_position _car_position
    (send _car_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning/Car_info _car_info
       (send _car_info :serialize s)
     ;; planning/Track_map _map
       (send _map :serialize s)
     ;; planning/State_machine _state_machine
       (send _state_machine :serialize s)
     ;; planning/Car_position _car_position
       (send _car_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning/Car_info _car_info
     (send _car_info :deserialize buf ptr-) (incf ptr- (send _car_info :serialization-length))
   ;; planning/Track_map _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; planning/State_machine _state_machine
     (send _state_machine :deserialize buf ptr-) (incf ptr- (send _state_machine :serialization-length))
   ;; planning/Car_position _car_position
     (send _car_position :deserialize buf ptr-) (incf ptr- (send _car_position :serialization-length))
   ;;
   self)
  )

(setf (get planning::Ltp_stub_data :md5sum-) "48f255fc4f3be5fabaaa233ba03e6166")
(setf (get planning::Ltp_stub_data :datatype-) "planning/Ltp_stub_data")
(setf (get planning::Ltp_stub_data :definition-)
      "Car_info car_info
Track_map map
State_machine state_machine
Car_position car_position
================================================================================
MSG: planning/Car_info
float32 speed 
float32 angle
int8 cpu_temperature
int8 engine_temperature
int8 brake_temperature
float32 fuel_level
================================================================================
MSG: planning/Track_map
uint8[] track_map
================================================================================
MSG: planning/State_machine
string state
================================================================================
MSG: planning/Car_position
uint32 car_position_x
uint32 car_position_y
")



(provide :planning/Ltp_stub_data "48f255fc4f3be5fabaaa233ba03e6166")


