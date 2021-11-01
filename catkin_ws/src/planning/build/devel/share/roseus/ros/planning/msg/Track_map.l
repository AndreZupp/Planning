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
  :slots (_track_map ))

(defmethod planning::Track_map
  (:init
   (&key
    ((:track_map __track_map) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _track_map __track_map)
   self)
  (:track_map
   (&optional __track_map)
   (if __track_map (setq _track_map __track_map)) _track_map)
  (:serialization-length
   ()
   (+
    ;; uint8[] _track_map
    (* 1    (length _track_map)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _track_map
     (write-long (length _track_map) s)
     (princ _track_map s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _track_map
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _track_map (make-array n :element-type :char))
     (replace _track_map buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning::Track_map :md5sum-) "08651d556bc08b887f0ea877fa34f623")
(setf (get planning::Track_map :datatype-) "planning/Track_map")
(setf (get planning::Track_map :definition-)
      "uint8[] track_map
")



(provide :planning/Track_map "08651d556bc08b887f0ea877fa34f623")


