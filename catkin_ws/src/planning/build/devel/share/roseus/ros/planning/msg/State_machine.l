;; Auto-generated. Do not edit!


(when (boundp 'planning::State_machine)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'State_machine (find-package "PLANNING")))
(unless (find-package "PLANNING::STATE_MACHINE")
  (make-package "PLANNING::STATE_MACHINE"))

(in-package "ROS")
;;//! \htmlinclude State_machine.msg.html


(defclass planning::State_machine
  :super ros::object
  :slots (_state ))

(defmethod planning::State_machine
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning::State_machine :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get planning::State_machine :datatype-) "planning/State_machine")
(setf (get planning::State_machine :definition-)
      "string state
")



(provide :planning/State_machine "af6d3a99f0fbeb66d3248fa4b3e675fb")


