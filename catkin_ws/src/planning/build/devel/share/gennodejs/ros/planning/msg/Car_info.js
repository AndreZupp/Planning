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

class Car_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.angle = null;
      this.cpu_temperature = null;
      this.engine_temperature = null;
      this.brake_temperature = null;
      this.fuel_level = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_temperature')) {
        this.cpu_temperature = initObj.cpu_temperature
      }
      else {
        this.cpu_temperature = 0;
      }
      if (initObj.hasOwnProperty('engine_temperature')) {
        this.engine_temperature = initObj.engine_temperature
      }
      else {
        this.engine_temperature = 0;
      }
      if (initObj.hasOwnProperty('brake_temperature')) {
        this.brake_temperature = initObj.brake_temperature
      }
      else {
        this.brake_temperature = 0;
      }
      if (initObj.hasOwnProperty('fuel_level')) {
        this.fuel_level = initObj.fuel_level
      }
      else {
        this.fuel_level = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Car_info
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [cpu_temperature]
    bufferOffset = _serializer.int8(obj.cpu_temperature, buffer, bufferOffset);
    // Serialize message field [engine_temperature]
    bufferOffset = _serializer.int8(obj.engine_temperature, buffer, bufferOffset);
    // Serialize message field [brake_temperature]
    bufferOffset = _serializer.int8(obj.brake_temperature, buffer, bufferOffset);
    // Serialize message field [fuel_level]
    bufferOffset = _serializer.float32(obj.fuel_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Car_info
    let len;
    let data = new Car_info(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_temperature]
    data.cpu_temperature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [engine_temperature]
    data.engine_temperature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [brake_temperature]
    data.brake_temperature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [fuel_level]
    data.fuel_level = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Car_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e69d1b4b55e3284e3c07c41966f6da7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Car_info(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.cpu_temperature !== undefined) {
      resolved.cpu_temperature = msg.cpu_temperature;
    }
    else {
      resolved.cpu_temperature = 0
    }

    if (msg.engine_temperature !== undefined) {
      resolved.engine_temperature = msg.engine_temperature;
    }
    else {
      resolved.engine_temperature = 0
    }

    if (msg.brake_temperature !== undefined) {
      resolved.brake_temperature = msg.brake_temperature;
    }
    else {
      resolved.brake_temperature = 0
    }

    if (msg.fuel_level !== undefined) {
      resolved.fuel_level = msg.fuel_level;
    }
    else {
      resolved.fuel_level = 0.0
    }

    return resolved;
    }
};

module.exports = Car_info;
