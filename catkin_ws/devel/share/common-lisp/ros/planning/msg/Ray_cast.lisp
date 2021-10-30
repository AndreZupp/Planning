; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude Ray_cast.msg.html

(cl:defclass <Ray_cast> (roslisp-msg-protocol:ros-message)
  ((raycast
    :reader raycast
    :initarg :raycast
    :type (cl:vector cl:float)
   :initform (cl:make-array 120 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Ray_cast (<Ray_cast>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ray_cast>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ray_cast)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<Ray_cast> is deprecated: use planning-msg:Ray_cast instead.")))

(cl:ensure-generic-function 'raycast-val :lambda-list '(m))
(cl:defmethod raycast-val ((m <Ray_cast>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:raycast-val is deprecated.  Use planning-msg:raycast instead.")
  (raycast m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ray_cast>) ostream)
  "Serializes a message object of type '<Ray_cast>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'raycast))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ray_cast>) istream)
  "Deserializes a message object of type '<Ray_cast>"
  (cl:setf (cl:slot-value msg 'raycast) (cl:make-array 120))
  (cl:let ((vals (cl:slot-value msg 'raycast)))
    (cl:dotimes (i 120)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ray_cast>)))
  "Returns string type for a message object of type '<Ray_cast>"
  "planning/Ray_cast")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ray_cast)))
  "Returns string type for a message object of type 'Ray_cast"
  "planning/Ray_cast")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ray_cast>)))
  "Returns md5sum for a message object of type '<Ray_cast>"
  "69032fc592b7f909842a6f6f945ea664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ray_cast)))
  "Returns md5sum for a message object of type 'Ray_cast"
  "69032fc592b7f909842a6f6f945ea664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ray_cast>)))
  "Returns full string definition for message of type '<Ray_cast>"
  (cl:format cl:nil "float32[120] raycast~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ray_cast)))
  "Returns full string definition for message of type 'Ray_cast"
  (cl:format cl:nil "float32[120] raycast~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ray_cast>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'raycast) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ray_cast>))
  "Converts a ROS message object to a list"
  (cl:list 'Ray_cast
    (cl:cons ':raycast (raycast msg))
))
