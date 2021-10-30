; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude Track_map.msg.html

(cl:defclass <Track_map> (roslisp-msg-protocol:ros-message)
  ((track_map
    :reader track_map
    :initarg :track_map
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (car_position_x
    :reader car_position_x
    :initarg :car_position_x
    :type cl:integer
    :initform 0)
   (car_position_y
    :reader car_position_y
    :initarg :car_position_y
    :type cl:integer
    :initform 0))
)

(cl:defclass Track_map (<Track_map>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Track_map>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Track_map)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<Track_map> is deprecated: use planning-msg:Track_map instead.")))

(cl:ensure-generic-function 'track_map-val :lambda-list '(m))
(cl:defmethod track_map-val ((m <Track_map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:track_map-val is deprecated.  Use planning-msg:track_map instead.")
  (track_map m))

(cl:ensure-generic-function 'car_position_x-val :lambda-list '(m))
(cl:defmethod car_position_x-val ((m <Track_map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_position_x-val is deprecated.  Use planning-msg:car_position_x instead.")
  (car_position_x m))

(cl:ensure-generic-function 'car_position_y-val :lambda-list '(m))
(cl:defmethod car_position_y-val ((m <Track_map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_position_y-val is deprecated.  Use planning-msg:car_position_y instead.")
  (car_position_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Track_map>) ostream)
  "Serializes a message object of type '<Track_map>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'track_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'track_map))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'car_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'car_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'car_position_y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Track_map>) istream)
  "Deserializes a message object of type '<Track_map>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'track_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'track_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'car_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'car_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'car_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'car_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'car_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'car_position_y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Track_map>)))
  "Returns string type for a message object of type '<Track_map>"
  "planning/Track_map")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Track_map)))
  "Returns string type for a message object of type 'Track_map"
  "planning/Track_map")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Track_map>)))
  "Returns md5sum for a message object of type '<Track_map>"
  "be9c896f2f8ceea48f99781c9df0718e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Track_map)))
  "Returns md5sum for a message object of type 'Track_map"
  "be9c896f2f8ceea48f99781c9df0718e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Track_map>)))
  "Returns full string definition for message of type '<Track_map>"
  (cl:format cl:nil "uint8[] track_map ~%uint32 car_position_x~%uint32 car_position_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Track_map)))
  "Returns full string definition for message of type 'Track_map"
  (cl:format cl:nil "uint8[] track_map ~%uint32 car_position_x~%uint32 car_position_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Track_map>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'track_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Track_map>))
  "Converts a ROS message object to a list"
  (cl:list 'Track_map
    (cl:cons ':track_map (track_map msg))
    (cl:cons ':car_position_x (car_position_x msg))
    (cl:cons ':car_position_y (car_position_y msg))
))
