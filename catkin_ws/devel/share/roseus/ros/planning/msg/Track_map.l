;; Auto-generated. Do not edit!


(when (boundp 'planning::Track_map)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Track_map (find-package "PLANNING")))
(unless (find-package "PLANNING::TRACK_MAP")
  (make-package "PLANNING::TRACK_MAP"))

(in-package "ROS")
;;//! \htmlinclude Track_map.msg.html


(defclass planning::Track_map
  :super ros::object
  :slots (_track_map _car_position_x _car_position_y ))

(defmethod planning::Track_map
  (:init
   (&key
    ((:track_map __track_map) (make-array 0 :initial-element 0 :element-type :char))
    ((:car_position_x __car_position_x) 0)
    ((:car_position_y __car_position_y) 0)
    )
   (send-super :init)
   (setq _track_map __track_map)
   (setq _car_position_x (round __car_position_x))
   (setq _car_position_y (round __car_position_y))
   self)
  (:track_map
   (&optional __track_map)
   (if __track_map (setq _track_map __track_map)) _track_map)
  (:car_position_x
   (&optional __car_position_x)
   (if __car_position_x (setq _car_position_x __car_position_x)) _car_position_x)
  (:car_position_y
   (&optional __car_position_y)
   (if __car_position_y (setq _car_position_y __car_position_y)) _car_position_y)
  (:serialization-length
   ()
   (+
    ;; uint8[] _track_map
    (* 1    (length _track_map)) 4
    ;; uint32 _car_position_x
    4
    ;; uint32 _car_position_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _track_map
     (write-long (length _track_map) s)
     (princ _track_map s)
     ;; uint32 _car_position_x
       (write-long _car_position_x s)
     ;; uint32 _car_position_y
       (write-long _car_position_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _track_map
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _track_map (make-array n :element-type :char))
     (replace _track_map buf :start2 ptr-) (incf ptr- n))
   ;; uint32 _car_position_x
     (setq _car_position_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _car_position_y
     (setq _car_position_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning::Track_map :md5sum-) "be9c896f2f8ceea48f99781c9df0718e")
(setf (get planning::Track_map :datatype-) "planning/Track_map")
(setf (get planning::Track_map :definition-)
      "uint8[] track_map 
uint32 car_position_x
uint32 car_position_y
")



(provide :planning/Track_map "be9c896f2f8ceea48f99781c9df0718e")


