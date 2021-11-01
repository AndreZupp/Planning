;; Auto-generated. Do not edit!


(when (boundp 'planning::Ray_cast)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Ray_cast (find-package "PLANNING")))
(unless (find-package "PLANNING::RAY_CAST")
  (make-package "PLANNING::RAY_CAST"))

(in-package "ROS")
;;//! \htmlinclude Ray_cast.msg.html


(defclass planning::Ray_cast
  :super ros::object
  :slots (_raycast ))

(defmethod planning::Ray_cast
  (:init
   (&key
    ((:raycast __raycast) (make-array 120 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _raycast __raycast)
   self)
  (:raycast
   (&optional __raycast)
   (if __raycast (setq _raycast __raycast)) _raycast)
  (:serialization-length
   ()
   (+
    ;; float32[120] _raycast
    (* 4    120)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[120] _raycast
     (dotimes (i 120)
       (sys::poke (elt _raycast i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[120] _raycast
   (dotimes (i (length _raycast))
     (setf (elt _raycast i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get planning::Ray_cast :md5sum-) "69032fc592b7f909842a6f6f945ea664")
(setf (get planning::Ray_cast :datatype-) "planning/Ray_cast")
(setf (get planning::Ray_cast :definition-)
      "float32[120] raycast

")



(provide :planning/Ray_cast "69032fc592b7f909842a6f6f945ea664")


