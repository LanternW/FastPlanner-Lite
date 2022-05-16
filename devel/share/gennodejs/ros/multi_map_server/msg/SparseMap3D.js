// Auto-generated. Do not edit!

// (in-package multi_map_server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VerticalOccupancyGridList = require('./VerticalOccupancyGridList.js');
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SparseMap3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.info = null;
      this.lists = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new nav_msgs.msg.MapMetaData();
      }
      if (initObj.hasOwnProperty('lists')) {
        this.lists = initObj.lists
      }
      else {
        this.lists = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SparseMap3D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = nav_msgs.msg.MapMetaData.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [lists]
    // Serialize the length for message field [lists]
    bufferOffset = _serializer.uint32(obj.lists.length, buffer, bufferOffset);
    obj.lists.forEach((val) => {
      bufferOffset = VerticalOccupancyGridList.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SparseMap3D
    let len;
    let data = new SparseMap3D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = nav_msgs.msg.MapMetaData.deserialize(buffer, bufferOffset);
    // Deserialize message field [lists]
    // Deserialize array length for message field [lists]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lists = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lists[i] = VerticalOccupancyGridList.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lists.forEach((val) => {
      length += VerticalOccupancyGridList.getMessageSize(val);
    });
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_map_server/SparseMap3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a20102f0b3a02e95070dab4140b78fb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    nav_msgs/MapMetaData info
    VerticalOccupancyGridList[] lists
    
    
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
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: multi_map_server/VerticalOccupancyGridList
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
    const resolved = new SparseMap3D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.info !== undefined) {
      resolved.info = nav_msgs.msg.MapMetaData.Resolve(msg.info)
    }
    else {
      resolved.info = new nav_msgs.msg.MapMetaData()
    }

    if (msg.lists !== undefined) {
      resolved.lists = new Array(msg.lists.length);
      for (let i = 0; i < resolved.lists.length; ++i) {
        resolved.lists[i] = VerticalOccupancyGridList.Resolve(msg.lists[i]);
      }
    }
    else {
      resolved.lists = []
    }

    return resolved;
    }
};

module.exports = SparseMap3D;
