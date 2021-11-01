// Auto-generated. Do not edit!

// (in-package planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Car_position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.car_position_x = null;
      this.car_position_y = null;
    }
    else {
      if (initObj.hasOwnProperty('car_position_x')) {
        this.car_position_x = initObj.car_position_x
      }
      else {
        this.car_position_x = 0;
      }
      if (initObj.hasOwnProperty('car_position_y')) {
        this.car_position_y = initObj.car_position_y
      }
      else {
        this.car_position_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Car_position
    // Serialize message field [car_position_x]
    bufferOffset = _serializer.uint32(obj.car_position_x, buffer, bufferOffset);
    // Serialize message field [car_position_y]
    bufferOffset = _serializer.uint32(obj.car_position_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Car_position
    let len;
    let data = new Car_position(null);
    // Deserialize message field [car_position_x]
    data.car_position_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [car_position_y]
    data.car_position_y = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Car_position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e857b7e9dc7cf44d55616be8e0aab5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 car_position_x
    uint32 car_position_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Car_position(null);
    if (msg.car_position_x !== undefined) {
      resolved.car_position_x = msg.car_position_x;
    }
    else {
      resolved.car_position_x = 0
    }

    if (msg.car_position_y !== undefined) {
      resolved.car_position_y = msg.car_position_y;
    }
    else {
      resolved.car_position_y = 0
    }

    return resolved;
    }
};

module.exports = Car_position;
