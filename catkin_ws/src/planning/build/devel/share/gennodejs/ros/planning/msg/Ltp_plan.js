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

class Ltp_plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_x_list = null;
      this.pos_y_list = null;
      this.speed = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_x_list')) {
        this.pos_x_list = initObj.pos_x_list
      }
      else {
        this.pos_x_list = [];
      }
      if (initObj.hasOwnProperty('pos_y_list')) {
        this.pos_y_list = initObj.pos_y_list
      }
      else {
        this.pos_y_list = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = [];
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ltp_plan
    // Serialize message field [pos_x_list]
    bufferOffset = _arraySerializer.uint32(obj.pos_x_list, buffer, bufferOffset, null);
    // Serialize message field [pos_y_list]
    bufferOffset = _arraySerializer.uint32(obj.pos_y_list, buffer, bufferOffset, null);
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float32(obj.speed, buffer, bufferOffset, null);
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ltp_plan
    let len;
    let data = new Ltp_plan(null);
    // Deserialize message field [pos_x_list]
    data.pos_x_list = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [pos_y_list]
    data.pos_y_list = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos_x_list.length;
    length += 4 * object.pos_y_list.length;
    length += 4 * object.speed.length;
    length += 4 * object.angle.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Ltp_plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84c9dd63f850849bf08d29bbdfe391dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] pos_x_list
    uint32[] pos_y_list
    float32[] speed
    float32[] angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ltp_plan(null);
    if (msg.pos_x_list !== undefined) {
      resolved.pos_x_list = msg.pos_x_list;
    }
    else {
      resolved.pos_x_list = []
    }

    if (msg.pos_y_list !== undefined) {
      resolved.pos_y_list = msg.pos_y_list;
    }
    else {
      resolved.pos_y_list = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = []
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = []
    }

    return resolved;
    }
};

module.exports = Ltp_plan;
