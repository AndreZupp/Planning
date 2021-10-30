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

class Ray_cast {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.raycast = null;
    }
    else {
      if (initObj.hasOwnProperty('raycast')) {
        this.raycast = initObj.raycast
      }
      else {
        this.raycast = new Array(120).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ray_cast
    // Check that the constant length array field [raycast] has the right length
    if (obj.raycast.length !== 120) {
      throw new Error('Unable to serialize array field raycast - length must be 120')
    }
    // Serialize message field [raycast]
    bufferOffset = _arraySerializer.float32(obj.raycast, buffer, bufferOffset, 120);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ray_cast
    let len;
    let data = new Ray_cast(null);
    // Deserialize message field [raycast]
    data.raycast = _arrayDeserializer.float32(buffer, bufferOffset, 120)
    return data;
  }

  static getMessageSize(object) {
    return 480;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Ray_cast';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69032fc592b7f909842a6f6f945ea664';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[120] raycast
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ray_cast(null);
    if (msg.raycast !== undefined) {
      resolved.raycast = msg.raycast;
    }
    else {
      resolved.raycast = new Array(120).fill(0)
    }

    return resolved;
    }
};

module.exports = Ray_cast;
