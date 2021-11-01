; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude Ltp_stub_data.msg.html

(cl:defclass <Ltp_stub_data> (roslisp-msg-protocol:ros-message)
  ((car_info
    :reader car_info
    :initarg :car_info
    :type planning-msg:Car_info
    :initform (cl:make-instance 'planning-msg:Car_info))
   (map
    :reader map
    :initarg :map
    :type planning-msg:Track_map
    :initform (cl:make-instance 'planning-msg:Track_map))
   (state_machine
    :reader state_machine
    :initarg :state_machine
    :type planning-msg:State_machine
    :initform (cl:make-instance 'planning-msg:State_machine))
   (car_position
    :reader car_position
    :initarg :car_position
    :type planning-msg:Car_position
    :initform (cl:make-instance 'planning-msg:Car_position)))
)

(cl:defclass Ltp_stub_data (<Ltp_stub_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ltp_stub_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ltp_stub_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<Ltp_stub_data> is deprecated: use planning-msg:Ltp_stub_data instead.")))

(cl:ensure-generic-function 'car_info-val :lambda-list '(m))
(cl:defmethod car_info-val ((m <Ltp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_info-val is deprecated.  Use planning-msg:car_info instead.")
  (car_info m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <Ltp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:map-val is deprecated.  Use planning-msg:map instead.")
  (map m))

(cl:ensure-generic-function 'state_machine-val :lambda-list '(m))
(cl:defmethod state_machine-val ((m <Ltp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:state_machine-val is deprecated.  Use planning-msg:state_machine instead.")
  (state_machine m))

(cl:ensure-generic-function 'car_position-val :lambda-list '(m))
(cl:defmethod car_position-val ((m <Ltp_stub_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:car_position-val is deprecated.  Use planning-msg:car_position instead.")
  (car_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ltp_stub_data>) ostream)
  "Serializes a message object of type '<Ltp_stub_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_machine) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ltp_stub_data>) istream)
  "Deserializes a message object of type '<Ltp_stub_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_machine) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ltp_stub_data>)))
  "Returns string type for a message object of type '<Ltp_stub_data>"
  "planning/Ltp_stub_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ltp_stub_data)))
  "Returns string type for a message object of type 'Ltp_stub_data"
  "planning/Ltp_stub_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ltp_stub_data>)))
  "Returns md5sum for a message object of type '<Ltp_stub_data>"
  "48f255fc4f3be5fabaaa233ba03e6166")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ltp_stub_data)))
  "Returns md5sum for a message object of type 'Ltp_stub_data"
  "48f255fc4f3be5fabaaa233ba03e6166")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ltp_stub_data>)))
  "Returns full string definition for message of type '<Ltp_stub_data>"
  (cl:format cl:nil "Car_info car_info~%Track_map map~%State_machine state_machine~%Car_position car_position~%================================================================================~%MSG: planning/Car_info~%float32 speed ~%float32 angle~%int8 cpu_temperature~%int8 engine_temperature~%int8 brake_temperature~%float32 fuel_level~%================================================================================~%MSG: planning/Track_map~%uint8[] track_map~%================================================================================~%MSG: planning/State_machine~%string state~%================================================================================~%MSG: planning/Car_position~%uint32 car_position_x~%uint32 car_position_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ltp_stub_data)))
  "Returns full string definition for message of type 'Ltp_stub_data"
  (cl:format cl:nil "Car_info car_info~%Track_map map~%State_machine state_machine~%Car_position car_position~%================================================================================~%MSG: planning/Car_info~%float32 speed ~%float32 angle~%int8 cpu_temperature~%int8 engine_temperature~%int8 brake_temperature~%float32 fuel_level~%================================================================================~%MSG: planning/Track_map~%uint8[] track_map~%================================================================================~%MSG: planning/State_machine~%string state~%================================================================================~%MSG: planning/Car_position~%uint32 car_position_x~%uint32 car_position_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ltp_stub_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_machine))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ltp_stub_data>))
  "Converts a ROS message object to a list"
  (cl:list 'Ltp_stub_data
    (cl:cons ':car_info (car_info msg))
    (cl:cons ':map (map msg))
    (cl:cons ':state_machine (state_machine msg))
    (cl:cons ':car_position (car_position msg))
))
