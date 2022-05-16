// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LQRTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory_id = null;
      this.action = null;
      this.r = null;
      this.start_yaw = null;
      this.final_yaw = null;
      this.s0 = null;
      this.ut = null;
      this.sf = null;
      this.t_f = null;
      this.debug_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('start_yaw')) {
        this.start_yaw = initObj.start_yaw
      }
      else {
        this.start_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('final_yaw')) {
        this.final_yaw = initObj.final_yaw
      }
      else {
        this.final_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('s0')) {
        this.s0 = initObj.s0
      }
      else {
        this.s0 = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('ut')) {
        this.ut = initObj.ut
      }
      else {
        this.ut = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('sf')) {
        this.sf = initObj.sf
      }
      else {
        this.sf = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('t_f')) {
        this.t_f = initObj.t_f
      }
      else {
        this.t_f = 0.0;
      }
      if (initObj.hasOwnProperty('debug_info')) {
        this.debug_info = initObj.debug_info
      }
      else {
        this.debug_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LQRTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.uint32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint32(obj.action, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float64(obj.r, buffer, bufferOffset);
    // Serialize message field [start_yaw]
    bufferOffset = _serializer.float64(obj.start_yaw, buffer, bufferOffset);
    // Serialize message field [final_yaw]
    bufferOffset = _serializer.float64(obj.final_yaw, buffer, bufferOffset);
    // Check that the constant length array field [s0] has the right length
    if (obj.s0.length !== 6) {
      throw new Error('Unable to serialize array field s0 - length must be 6')
    }
    // Serialize message field [s0]
    bufferOffset = _arraySerializer.float64(obj.s0, buffer, bufferOffset, 6);
    // Check that the constant length array field [ut] has the right length
    if (obj.ut.length !== 3) {
      throw new Error('Unable to serialize array field ut - length must be 3')
    }
    // Serialize message field [ut]
    bufferOffset = _arraySerializer.float64(obj.ut, buffer, bufferOffset, 3);
    // Check that the constant length array field [sf] has the right length
    if (obj.sf.length !== 6) {
      throw new Error('Unable to serialize array field sf - length must be 6')
    }
    // Serialize message field [sf]
    bufferOffset = _arraySerializer.float64(obj.sf, buffer, bufferOffset, 6);
    // Serialize message field [t_f]
    bufferOffset = _serializer.float64(obj.t_f, buffer, bufferOffset);
    // Serialize message field [debug_info]
    bufferOffset = _serializer.string(obj.debug_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LQRTrajectory
    let len;
    let data = new LQRTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [start_yaw]
    data.start_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_yaw]
    data.final_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s0]
    data.s0 = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [ut]
    data.ut = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [sf]
    data.sf = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [t_f]
    data.t_f = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [debug_info]
    data.debug_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.debug_info.length;
    return length + 164;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/LQRTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46be446c56bc8bf131978edfc4464480';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # the trajectory id, starts from "1".
    uint32 trajectory_id
    
    # the action command for trajectory server.
    uint32 ACTION_ADD           =   1
    uint32 ACTION_ABORT         =   2
    uint32 ACTION_WARN_START           =   3
    uint32 ACTION_WARN_FINAL           =   4
    uint32 ACTION_WARN_IMPOSSIBLE      =   5
    uint32 action
    
    # the weight coefficient of the control effort
    float64 r
    
    # the yaw command
    float64 start_yaw
    float64 final_yaw
    
    # the initial and final state
    float64[6] s0
    float64[3] ut
     
    float64[6] sf 
    
    # the optimal arrival time
    float64 t_f
    
    string debug_info
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LQRTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.start_yaw !== undefined) {
      resolved.start_yaw = msg.start_yaw;
    }
    else {
      resolved.start_yaw = 0.0
    }

    if (msg.final_yaw !== undefined) {
      resolved.final_yaw = msg.final_yaw;
    }
    else {
      resolved.final_yaw = 0.0
    }

    if (msg.s0 !== undefined) {
      resolved.s0 = msg.s0;
    }
    else {
      resolved.s0 = new Array(6).fill(0)
    }

    if (msg.ut !== undefined) {
      resolved.ut = msg.ut;
    }
    else {
      resolved.ut = new Array(3).fill(0)
    }

    if (msg.sf !== undefined) {
      resolved.sf = msg.sf;
    }
    else {
      resolved.sf = new Array(6).fill(0)
    }

    if (msg.t_f !== undefined) {
      resolved.t_f = msg.t_f;
    }
    else {
      resolved.t_f = 0.0
    }

    if (msg.debug_info !== undefined) {
      resolved.debug_info = msg.debug_info;
    }
    else {
      resolved.debug_info = ''
    }

    return resolved;
    }
};

// Constants for message
LQRTrajectory.Constants = {
  ACTION_ADD: 1,
  ACTION_ABORT: 2,
  ACTION_WARN_START: 3,
  ACTION_WARN_FINAL: 4,
  ACTION_WARN_IMPOSSIBLE: 5,
}

module.exports = LQRTrajectory;
