;; Auto-generated. Do not edit!


(when (boundp 'planning::Car_info)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Car_info (find-package "PLANNING")))
(unless (find-package "PLANNING::CAR_INFO")
  (make-package "PLANNING::CAR_INFO"))

(in-package "ROS")
;;//! \htmlinclude Car_info.msg.html


(defclass planning::Car_info
  :super ros::object
  :slots (_speed _angle _cpu_temperature _engine_temperature _brake_temperature _fuel_level ))

(defmethod planning::Car_info
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:angle __angle) 0.0)
    ((:cpu_temperature __cpu_temperature) 0)
    ((:engine_temperature __engine_temperature) 0)
    ((:brake_temperature __brake_temperature) 0)
    ((:fuel_level __fuel_level) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _angle (float __angle))
   (setq _cpu_temperature (round __cpu_temperature))
   (setq _engine_temperature (round __engine_temperature))
   (setq _brake_temperature (round __brake_temperature))
   (setq _fuel_level (float __fuel_level))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:cpu_temperature
   (&optional __cpu_temperature)
   (if __cpu_temperature (setq _cpu_temperature __cpu_temperature)) _cpu_temperature)
  (:engine_temperature
   (&optional __engine_temperature)
   (if __engine_temperature (setq _engine_temperature __engine_temperature)) _engine_temperature)
  (:brake_temperature
   (&optional __brake_temperature)
   (if __brake_temperature (setq _brake_temperature __brake_temperature)) _brake_temperature)
  (:fuel_level
   (&optional __fuel_level)
   (if __fuel_level (setq _fuel_level __fuel_level)) _fuel_level)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; float32 _angle
    4
    ;; int8 _cpu_temperature
    1
    ;; int8 _engine_temperature
    1
    ;; int8 _brake_temperature
    1
    ;; float32 _fuel_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _cpu_temperature
       (write-byte _cpu_temperature s)
     ;; int8 _engine_temperature
       (write-byte _engine_temperature s)
     ;; int8 _brake_temperature
       (write-byte _brake_temperature s)
     ;; float32 _fuel_level
       (sys::poke _fuel_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _cpu_temperature
     (setq _cpu_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cpu_temperature 127) (setq _cpu_temperature (- _cpu_temperature 256)))
   ;; int8 _engine_temperature
     (setq _engine_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _engine_temperature 127) (setq _engine_temperature (- _engine_temperature 256)))
   ;; int8 _brake_temperature
     (setq _brake_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _brake_temperature 127) (setq _brake_temperature (- _brake_temperature 256)))
   ;; float32 _fuel_level
     (setq _fuel_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning::Car_info :md5sum-) "9e69d1b4b55e3284e3c07c41966f6da7")
(setf (get planning::Car_info :datatype-) "planning/Car_info")
(setf (get planning::Car_info :definition-)
      "float32 speed 
float32 angle
int8 cpu_temperature
int8 engine_temperature
int8 brake_temperature
float32 fuel_level
")



(provide :planning/Car_info "9e69d1b4b55e3284e3c07c41966f6da7")


