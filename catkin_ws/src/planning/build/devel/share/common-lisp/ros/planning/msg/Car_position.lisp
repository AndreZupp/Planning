; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude Car_position.msg.html

(cl:defclass <Car_position> (roslisp-msg-protocol:ros-message)
  ((car_position_x
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

(cl:defclass Car_position (<Car_position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Car_position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Car_position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<Car_position> is deprecated: use planning-msg:Car_position instead.")))

(cl:ensure-generic-function 'car_position_x-val :lambda-list '(m))
(cl:defmethod car_position_x-val ((m <Car_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_position_x-val is deprecated.  Use planning-msg:car_position_x instead.")
  (car_position_x m))

(cl:ensure-generic-function 'car_position_y-val :lambda-list '(m))
(cl:defmethod car_position_y-val ((m <Car_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_position_y-val is deprecated.  Use planning-msg:car_position_y instead.")
  (car_position_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Car_position>) ostream)
  "Serializes a message object of type '<Car_position>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'car_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'car_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'car_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'car_position_y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Car_position>) istream)
  "Deserializes a message object of type '<Car_position>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Car_position>)))
  "Returns string type for a message object of type '<Car_position>"
  "planning/Car_position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Car_position)))
  "Returns string type for a message object of type 'Car_position"
  "planning/Car_position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Car_position>)))
  "Returns md5sum for a message object of type '<Car_position>"
  "4e857b7e9dc7cf44d55616be8e0aab5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Car_position)))
  "Returns md5sum for a message object of type 'Car_position"
  "4e857b7e9dc7cf44d55616be8e0aab5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Car_position>)))
  "Returns full string definition for message of type '<Car_position>"
  (cl:format cl:nil "uint32 car_position_x~%uint32 car_position_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Car_position)))
  "Returns full string definition for message of type 'Car_position"
  (cl:format cl:nil "uint32 car_position_x~%uint32 car_position_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Car_position>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Car_position>))
  "Converts a ROS message object to a list"
  (cl:list 'Car_position
    (cl:cons ':car_position_x (car_position_x msg))
    (cl:cons ':car_position_y (car_position_y msg))
))
