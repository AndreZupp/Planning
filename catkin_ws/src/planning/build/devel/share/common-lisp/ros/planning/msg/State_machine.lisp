; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude State_machine.msg.html

(cl:defclass <State_machine> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass State_machine (<State_machine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State_machine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State_machine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<State_machine> is deprecated: use planning-msg:State_machine instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <State_machine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:state-val is deprecated.  Use planning-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State_machine>) ostream)
  "Serializes a message object of type '<State_machine>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State_machine>) istream)
  "Deserializes a message object of type '<State_machine>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State_machine>)))
  "Returns string type for a message object of type '<State_machine>"
  "planning/State_machine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State_machine)))
  "Returns string type for a message object of type 'State_machine"
  "planning/State_machine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State_machine>)))
  "Returns md5sum for a message object of type '<State_machine>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State_machine)))
  "Returns md5sum for a message object of type 'State_machine"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State_machine>)))
  "Returns full string definition for message of type '<State_machine>"
  (cl:format cl:nil "string state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State_machine)))
  "Returns full string definition for message of type 'State_machine"
  (cl:format cl:nil "string state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State_machine>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State_machine>))
  "Converts a ROS message object to a list"
  (cl:list 'State_machine
    (cl:cons ':state (state msg))
))
