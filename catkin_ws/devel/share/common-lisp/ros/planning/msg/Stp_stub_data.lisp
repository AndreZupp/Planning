; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude Stp_stub_data.msg.html

(cl:defclass <Stp_stub_data> (roslisp-msg-protocol:ros-message)
  ((ray_cast
    :reader ray_cast
    :initarg :ray_cast
    :type planning-msg:Ray_cast
    :initform (cl:make-instance 'planning-msg:Ray_cast))
   (state_machine
    :reader state_machine
    :initarg :state_machine
    :type planning-msg:State_machine
    :initform (cl:make-instance 'planning-msg:State_machine))
   (car_info
    :reader car_info
    :initarg :car_info
    :type planning-msg:Car_info
    :initform (cl:make-instance 'planning-msg:Car_info)))
)

(cl:defclass Stp_stub_data (<Stp_stub_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stp_stub_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stp_stub_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<Stp_stub_data> is deprecated: use planning-msg:Stp_stub_data instead.")))

(cl:ensure-generic-function 'ray_cast-val :lambda-list '(m))
(cl:defmethod ray_cast-val ((m <Stp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:ray_cast-val is deprecated.  Use planning-msg:ray_cast instead.")
  (ray_cast m))

(cl:ensure-generic-function 'state_machine-val :lambda-list '(m))
(cl:defmethod state_machine-val ((m <Stp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:state_machine-val is deprecated.  Use planning-msg:state_machine instead.")
  (state_machine m))

(cl:ensure-generic-function 'car_info-val :lambda-list '(m))
(cl:defmethod car_info-val ((m <Stp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_info-val is deprecated.  Use planning-msg:car_info instead.")
  (car_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stp_stub_data>) ostream)
  "Serializes a message object of type '<Stp_stub_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ray_cast) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_machine) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stp_stub_data>) istream)
  "Deserializes a message object of type '<Stp_stub_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ray_cast) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_machine) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stp_stub_data>)))
  "Returns string type for a message object of type '<Stp_stub_data>"
  "planning/Stp_stub_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stp_stub_data)))
  "Returns string type for a message object of type 'Stp_stub_data"
  "planning/Stp_stub_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stp_stub_data>)))
  "Returns md5sum for a message object of type '<Stp_stub_data>"
  "44c7d84071af36913c5f647289d9a734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stp_stub_data)))
  "Returns md5sum for a message object of type 'Stp_stub_data"
  "44c7d84071af36913c5f647289d9a734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stp_stub_data>)))
  "Returns full string definition for message of type '<Stp_stub_data>"
  (cl:format cl:nil "Ray_cast ray_cast~%State_machine state_machine~%Car_info car_info~%~%================================================================================~%MSG: planning/Ray_cast~%float32[120] raycast~%~%================================================================================~%MSG: planning/State_machine~%string state~%================================================================================~%MSG: planning/Car_info~%float32 speed ~%float32 angle~%int8 cpu_temperature~%int8 engine_temperature~%int8 brake_temperature~%float32 fuel_level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stp_stub_data)))
  "Returns full string definition for message of type 'Stp_stub_data"
  (cl:format cl:nil "Ray_cast ray_cast~%State_machine state_machine~%Car_info car_info~%~%================================================================================~%MSG: planning/Ray_cast~%float32[120] raycast~%~%================================================================================~%MSG: planning/State_machine~%string state~%================================================================================~%MSG: planning/Car_info~%float32 speed ~%float32 angle~%int8 cpu_temperature~%int8 engine_temperature~%int8 brake_temperature~%float32 fuel_level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stp_stub_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ray_cast))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_machine))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stp_stub_data>))
  "Converts a ROS message object to a list"
  (cl:list 'Stp_stub_data
    (cl:cons ':ray_cast (ray_cast msg))
    (cl:cons ':state_machine (state_machine msg))
    (cl:cons ':car_info (car_info msg))
))
