;; Auto-generated. Do not edit!


(when (boundp 'planning::Stp_stub_data)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Stp_stub_data (find-package "PLANNING")))
(unless (find-package "PLANNING::STP_STUB_DATA")
  (make-package "PLANNING::STP_STUB_DATA"))

(in-package "ROS")
;;//! \htmlinclude Stp_stub_data.msg.html


(defclass planning::Stp_stub_data
  :super ros::object
  :slots (_ray_cast _state_machine _car_info ))

(defmethod planning::Stp_stub_data
  (:init
   (&key
    ((:ray_cast __ray_cast) (instance planning::Ray_cast :init))
    ((:state_machine __state_machine) (instance planning::State_machine :init))
    ((:car_info __car_info) (instance planning::Car_info :init))
    )
   (send-super :init)
   (setq _ray_cast __ray_cast)
   (setq _state_machine __state_machine)
   (setq _car_info __car_info)
   self)
  (:ray_cast
   (&rest __ray_cast)
   (if (keywordp (car __ray_cast))
       (send* _ray_cast __ray_cast)
     (progn
       (if __ray_cast (setq _ray_cast (car __ray_cast)))
       _ray_cast)))
  (:state_machine
   (&rest __state_machine)
   (if (keywordp (car __state_machine))
       (send* _state_machine __state_machine)
     (progn
       (if __state_machine (setq _state_machine (car __state_machine)))
       _state_machine)))
  (:car_info
   (&rest __car_info)
   (if (keywordp (car __car_info))
       (send* _car_info __car_info)
     (progn
       (if __car_info (setq _car_info (car __car_info)))
       _car_info)))
  (:serialization-length
   ()
   (+
    ;; planning/Ray_cast _ray_cast
    (send _ray_cast :serialization-length)
    ;; planning/State_machine _state_machine
    (send _state_machine :serialization-length)
    ;; planning/Car_info _car_info
    (send _car_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning/Ray_cast _ray_cast
       (send _ray_cast :serialize s)
     ;; planning/State_machine _state_machine
       (send _state_machine :serialize s)
     ;; planning/Car_info _car_info
       (send _car_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning/Ray_cast _ray_cast
     (send _ray_cast :deserialize buf ptr-) (incf ptr- (send _ray_cast :serialization-length))
   ;; planning/State_machine _state_machine
     (send _state_machine :deserialize buf ptr-) (incf ptr- (send _state_machine :serialization-length))
   ;; planning/Car_info _car_info
     (send _car_info :deserialize buf ptr-) (incf ptr- (send _car_info :serialization-length))
   ;;
   self)
  )

(setf (get planning::Stp_stub_data :md5sum-) "44c7d84071af36913c5f647289d9a734")
(setf (get planning::Stp_stub_data :datatype-) "planning/Stp_stub_data")
(setf (get planning::Stp_stub_data :definition-)
      "Ray_cast ray_cast
State_machine state_machine
Car_info car_info

================================================================================
MSG: planning/Ray_cast
float32[120] raycast

================================================================================
MSG: planning/State_machine
string state
================================================================================
MSG: planning/Car_info
float32 speed 
float32 angle
int8 cpu_temperature
int8 engine_temperature
int8 brake_temperature
float32 fuel_level
")



(provide :planning/Stp_stub_data "44c7d84071af36913c5f647289d9a734")


