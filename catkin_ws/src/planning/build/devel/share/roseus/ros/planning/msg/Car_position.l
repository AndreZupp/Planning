;; Auto-generated. Do not edit!


(when (boundp 'planning::Car_position)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Car_position (find-package "PLANNING")))
(unless (find-package "PLANNING::CAR_POSITION")
  (make-package "PLANNING::CAR_POSITION"))

(in-package "ROS")
;;//! \htmlinclude Car_position.msg.html


(defclass planning::Car_position
  :super ros::object
  :slots (_car_position_x _car_position_y ))

(defmethod planning::Car_position
  (:init
   (&key
    ((:car_position_x __car_position_x) 0)
    ((:car_position_y __car_position_y) 0)
    )
   (send-super :init)
   (setq _car_position_x (round __car_position_x))
   (setq _car_position_y (round __car_position_y))
   self)
  (:car_position_x
   (&optional __car_position_x)
   (if __car_position_x (setq _car_position_x __car_position_x)) _car_position_x)
  (:car_position_y
   (&optional __car_position_y)
   (if __car_position_y (setq _car_position_y __car_position_y)) _car_position_y)
  (:serialization-length
   ()
   (+
    ;; uint32 _car_position_x
    4
    ;; uint32 _car_position_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _car_position_x
       (write-long _car_position_x s)
     ;; uint32 _car_position_y
       (write-long _car_position_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _car_position_x
     (setq _car_position_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _car_position_y
     (setq _car_position_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning::Car_position :md5sum-) "4e857b7e9dc7cf44d55616be8e0aab5c")
(setf (get planning::Car_position :datatype-) "planning/Car_position")
(setf (get planning::Car_position :definition-)
      "uint32 car_position_x
uint32 car_position_y
")



(provide :planning/Car_position "4e857b7e9dc7cf44d55616be8e0aab5c")


