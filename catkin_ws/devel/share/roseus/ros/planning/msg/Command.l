;; Auto-generated. Do not edit!


(when (boundp 'planning::Command)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Command (find-package "PLANNING")))
(unless (find-package "PLANNING::COMMAND")
  (make-package "PLANNING::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass planning::Command
  :super ros::object
  :slots (_speed _angle ))

(defmethod planning::Command
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _angle (float __angle))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; float32 _angle
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning::Command :md5sum-) "e18a4dfdb52fee48fc2e3bc9e7b74071")
(setf (get planning::Command :datatype-) "planning/Command")
(setf (get planning::Command :definition-)
      "float32 speed
float32 angle
")



(provide :planning/Command "e18a4dfdb52fee48fc2e3bc9e7b74071")


