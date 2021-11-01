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

class Track_map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_map = null;
    }
    else {
      if (initObj.hasOwnProperty('track_map')) {
        this.track_map = initObj.track_map
      }
      else {
        this.track_map = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Track_map
    // Serialize message field [track_map]
    bufferOffset = _arraySerializer.uint8(obj.track_map, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Track_map
    let len;
    let data = new Track_map(null);
    // Deserialize message field [track_map]
    data.track_map = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.track_map.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/Track_map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08651d556bc08b887f0ea877fa34f623';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] track_map
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Track_map(null);
    if (msg.track_map !== undefined) {
      resolved.track_map = msg.track_map;
    }
    else {
      resolved.track_map = []
    }

    return resolved;
    }
};

module.exports = Track_map;
