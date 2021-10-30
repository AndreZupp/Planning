; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude Car_info.msg.html

(cl:defclass <Car_info> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (cpu_temperature
    :reader cpu_temperature
    :initarg :cpu_temperature
    :type cl:fixnum
    :initform 0)
   (engine_temperature
    :reader engine_temperature
    :initarg :engine_temperature
    :type cl:fixnum
    :initform 0)
   (brake_temperature
    :reader brake_temperature
    :initarg :brake_temperature
    :type cl:fixnum
    :initform 0)
   (fuel_level
    :reader fuel_level
    :initarg :fuel_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass Car_info (<Car_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Car_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Car_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<Car_info> is deprecated: use planning-msg:Car_info instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Car_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:speed-val is deprecated.  Use planning-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Car_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:angle-val is deprecated.  Use planning-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'cpu_temperature-val :lambda-list '(m))
(cl:defmethod cpu_temperature-val ((m <Car_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:cpu_temperature-val is deprecated.  Use planning-msg:cpu_temperature instead.")
  (cpu_temperature m))

(cl:ensure-generic-function 'engine_temperature-val :lambda-list '(m))
(cl:defmethod engine_temperature-val ((m <Car_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:engine_temperature-val is deprecated.  Use planning-msg:engine_temperature instead.")
  (engine_temperature m))

(cl:ensure-generic-function 'brake_temperature-val :lambda-list '(m))
(cl:defmethod brake_temperature-val ((m <Car_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:brake_temperature-val is deprecated.  Use planning-msg:brake_temperature instead.")
  (brake_temperature m))

(cl:ensure-generic-function 'fuel_level-val :lambda-list '(m))
(cl:defmethod fuel_level-val ((m <Car_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:fuel_level-val is deprecated.  Use planning-msg:fuel_level instead.")
  (fuel_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Car_info>) ostream)
  "Serializes a message object of type '<Car_info>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'cpu_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'engine_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fuel_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Car_info>) istream)
  "Deserializes a message object of type '<Car_info>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cpu_temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engine_temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fuel_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Car_info>)))
  "Returns string type for a message object of type '<Car_info>"
  "planning/Car_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Car_info)))
  "Returns string type for a message object of type 'Car_info"
  "planning/Car_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Car_info>)))
  "Returns md5sum for a message object of type '<Car_info>"
  "9e69d1b4b55e3284e3c07c41966f6da7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Car_info)))
  "Returns md5sum for a message object of type 'Car_info"
  "9e69d1b4b55e3284e3c07c41966f6da7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Car_info>)))
  "Returns full string definition for message of type '<Car_info>"
  (cl:format cl:nil "float32 speed ~%float32 angle~%int8 cpu_temperature~%int8 engine_temperature~%int8 brake_temperature~%float32 fuel_level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Car_info)))
  "Returns full string definition for message of type 'Car_info"
  (cl:format cl:nil "float32 speed ~%float32 angle~%int8 cpu_temperature~%int8 engine_temperature~%int8 brake_temperature~%float32 fuel_level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Car_info>))
  (cl:+ 0
     4
     4
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Car_info>))
  "Converts a ROS message object to a list"
  (cl:list 'Car_info
    (cl:cons ':speed (speed msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':cpu_temperature (cpu_temperature msg))
    (cl:cons ':engine_temperature (engine_temperature msg))
    (cl:cons ':brake_temperature (brake_temperature msg))
    (cl:cons ':fuel_level (fuel_level msg))
))
