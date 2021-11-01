// Auto-generated. Do not edit!

// (in-package planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Car_info = require('./Car_info.js');
let Track_map = require('./Track_map.js');
let State_machine = require('./State_machine.js');
let Car_position = require('./Car_position.js');

//-----------------------------------------------------------

class Ltp_stub_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.car_info = null;
      this.map = null;
      this.state_machine = null;
      this.car_position = null;
    }
    else {
      if (initObj.hasOwnProperty('car_info')) {
        this.car_info = initObj.car_info
      }
      else {
        this.car_info = new Car_info();
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new Track_map();
      }
      if (initObj.hasOwnProperty('state_machine')) {
        this.state_machine = initObj.state_machine
      }
      else {
        this.state_machine = new State_machine();
      }
      if (initObj.hasOwnProperty('car_position')) {
        this.car_position = initObj.car_position
      }
      else {
        this.car_position = new Car_position();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ltp_stub_data
    // Serialize message field [car_info]
    bufferOffset = Car_info.serialize(obj.car_info, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = Track_map.serialize(obj.map, buffer, bufferOffset);
    // Serialize message field [state_machine]
    bufferOffset = State_machine.serialize(obj.state_machine, buffer, bufferOffset);
    // Serialize message field [car_position]
    bufferOffset = Car_position.serialize(obj.car_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ltp_stub_data
    let len;
    let data = new Ltp_stub_data(null);
    // Deserialize message field [car_info]
    data.car_info = Car_info.deserialize(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = Track_map.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_machine]
    data.state_machine = State_machine.deserialize(buffer, bufferOffset);
    // Deserialize message field [car_position]
    data.car_position = Car_position.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Track_map.getMessageSize(object.map);
    length += State_machine.getMessageSize(object.state_machine);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Ltp_stub_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48f255fc4f3be5fabaaa233ba03e6166';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Car_info car_info
    Track_map map
    State_machine state_machine
    Car_position car_position
    ================================================================================
    MSG: planning/Car_info
    float32 speed 
    float32 angle
    int8 cpu_temperature
    int8 engine_temperature
    int8 brake_temperature
    float32 fuel_level
    ================================================================================
    MSG: planning/Track_map
    uint8[] track_map
    ================================================================================
    MSG: planning/State_machine
    string state
    ================================================================================
    MSG: planning/Car_position
    uint32 car_position_x
    uint32 car_position_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ltp_stub_data(null);
    if (msg.car_info !== undefined) {
      resolved.car_info = Car_info.Resolve(msg.car_info)
    }
    else {
      resolved.car_info = new Car_info()
    }

    if (msg.map !== undefined) {
      resolved.map = Track_map.Resolve(msg.map)
    }
    else {
      resolved.map = new Track_map()
    }

    if (msg.state_machine !== undefined) {
      resolved.state_machine = State_machine.Resolve(msg.state_machine)
    }
    else {
      resolved.state_machine = new State_machine()
    }

    if (msg.car_position !== undefined) {
      resolved.car_position = Car_position.Resolve(msg.car_position)
    }
    else {
      resolved.car_position = new Car_position()
    }

    return resolved;
    }
};

module.exports = Ltp_stub_data;
