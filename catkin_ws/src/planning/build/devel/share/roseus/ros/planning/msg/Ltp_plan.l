;; Auto-generated. Do not edit!


(when (boundp 'planning::Ltp_plan)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'Ltp_plan (find-package "PLANNING")))
(unless (find-package "PLANNING::LTP_PLAN")
  (make-package "PLANNING::LTP_PLAN"))

(in-package "ROS")
;;//! \htmlinclude Ltp_plan.msg.html


(defclass planning::Ltp_plan
  :super ros::object
  :slots (_pos_x_list _pos_y_list _speed _angle ))

(defmethod planning::Ltp_plan
  (:init
   (&key
    ((:pos_x_list __pos_x_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pos_y_list __pos_y_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:speed __speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos_x_list __pos_x_list)
   (setq _pos_y_list __pos_y_list)
   (setq _speed __speed)
   (setq _angle __angle)
   self)
  (:pos_x_list
   (&optional __pos_x_list)
   (if __pos_x_list (setq _pos_x_list __pos_x_list)) _pos_x_list)
  (:pos_y_list
   (&optional __pos_y_list)
   (if __pos_y_list (setq _pos_y_list __pos_y_list)) _pos_y_list)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; uint32[] _pos_x_list
    (* 4    (length _pos_x_list)) 4
    ;; uint32[] _pos_y_list
    (* 4    (length _pos_y_list)) 4
    ;; float32[] _speed
    (* 4    (length _speed)) 4
    ;; float32[] _angle
    (* 4    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _pos_x_list
     (write-long (length _pos_x_list) s)
     (dotimes (i (length _pos_x_list))
       (write-long (elt _pos_x_list i) s)
       )
     ;; uint32[] _pos_y_list
     (write-long (length _pos_y_list) s)
     (dotimes (i (length _pos_y_list))
       (write-long (elt _pos_y_list i) s)
       )
     ;; float32[] _speed
     (write-long (length _speed) s)
     (dotimes (i (length _speed))
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _pos_x_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_x_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pos_x_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _pos_y_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_y_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pos_y_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get planning::Ltp_plan :md5sum-) "84c9dd63f850849bf08d29bbdfe391dd")
(setf (get planning::Ltp_plan :datatype-) "planning/Ltp_plan")
(setf (get planning::Ltp_plan :definition-)
      "uint32[] pos_x_list
uint32[] pos_y_list
float32[] speed
float32[] angle
")



(provide :planning/Ltp_plan "84c9dd63f850849bf08d29bbdfe391dd")


