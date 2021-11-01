// Auto-generated. Do not edit!

// (in-package planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Ray_cast = require('./Ray_cast.js');
let State_machine = require('./State_machine.js');
let Car_info = require('./Car_info.js');

//-----------------------------------------------------------

class Stp_stub_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ray_cast = null;
      this.state_machine = null;
      this.car_info = null;
    }
    else {
      if (initObj.hasOwnProperty('ray_cast')) {
        this.ray_cast = initObj.ray_cast
      }
      else {
        this.ray_cast = new Ray_cast();
      }
      if (initObj.hasOwnProperty('state_machine')) {
        this.state_machine = initObj.state_machine
      }
      else {
        this.state_machine = new State_machine();
      }
      if (initObj.hasOwnProperty('car_info')) {
        this.car_info = initObj.car_info
      }
      else {
        this.car_info = new Car_info();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stp_stub_data
    // Serialize message field [ray_cast]
    bufferOffset = Ray_cast.serialize(obj.ray_cast, buffer, bufferOffset);
    // Serialize message field [state_machine]
    bufferOffset = State_machine.serialize(obj.state_machine, buffer, bufferOffset);
    // Serialize message field [car_info]
    bufferOffset = Car_info.serialize(obj.car_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stp_stub_data
    let len;
    let data = new Stp_stub_data(null);
    // Deserialize message field [ray_cast]
    data.ray_cast = Ray_cast.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_machine]
    data.state_machine = State_machine.deserialize(buffer, bufferOffset);
    // Deserialize message field [car_info]
    data.car_info = Car_info.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += State_machine.getMessageSize(object.state_machine);
    return length + 495;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Stp_stub_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44c7d84071af36913c5f647289d9a734';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Ray_cast ray_cast
    State_machine state_machine
    Car_info car_info
    # Command ltp_command
    ================================================================================
    MSG: planning/Ray_cast
    float32[120] raycast
    
    ================================================================================
    MSG: planning/State_machine
    string state
    ================================================================================
    MSG: planning/Car_info
    float32 speed 
    float32 angle
    int8 cpu_temperature
    int8 engine_temperature
    int8 brake_temperature
    float32 fuel_level
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stp_stub_data(null);
    if (msg.ray_cast !== undefined) {
      resolved.ray_cast = Ray_cast.Resolve(msg.ray_cast)
    }
    else {
      resolved.ray_cast = new Ray_cast()
    }

    if (msg.state_machine !== undefined) {
      resolved.state_machine = State_machine.Resolve(msg.state_machine)
    }
    else {
      resolved.state_machine = new State_machine()
    }

    if (msg.car_info !== undefined) {
      resolved.car_info = Car_info.Resolve(msg.car_info)
    }
    else {
      resolved.car_info = new Car_info()
    }

    return resolved;
    }
};

module.exports = Stp_stub_data;
