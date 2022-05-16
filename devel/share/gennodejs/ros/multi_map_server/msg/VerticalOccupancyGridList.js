// Auto-generated. Do not edit!

// (in-package multi_map_server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VerticalOccupancyGridList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.upper = null;
      this.lower = null;
      this.mass = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('upper')) {
        this.upper = initObj.upper
      }
      else {
        this.upper = [];
      }
      if (initObj.hasOwnProperty('lower')) {
        this.lower = initObj.lower
      }
      else {
        this.lower = [];
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VerticalOccupancyGridList
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [upper]
    bufferOffset = _arraySerializer.int32(obj.upper, buffer, bufferOffset, null);
    // Serialize message field [lower]
    bufferOffset = _arraySerializer.int32(obj.lower, buffer, bufferOffset, null);
    // Serialize message field [mass]
    bufferOffset = _arraySerializer.int32(obj.mass, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VerticalOccupancyGridList
    let len;
    let data = new VerticalOccupancyGridList(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [upper]
    data.upper = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lower]
    data.lower = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [mass]
    data.mass = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.upper.length;
    length += 4 * object.lower.length;
    length += 4 * object.mass.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_map_server/VerticalOccupancyGridList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ef85cc95b82747f51eb01a16bd7c795';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    int32[] upper
    int32[] lower
    int32[] mass
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VerticalOccupancyGridList(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.upper !== undefined) {
      resolved.upper = msg.upper;
    }
    else {
      resolved.upper = []
    }

    if (msg.lower !== undefined) {
      resolved.lower = msg.lower;
    }
    else {
      resolved.lower = []
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = []
    }

    return resolved;
    }
};

module.exports = VerticalOccupancyGridList;
