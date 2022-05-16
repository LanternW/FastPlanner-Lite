// Auto-generated. Do not edit!

// (in-package multi_map_server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SparseMap3D = require('./SparseMap3D.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MultiSparseMap3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maps = null;
      this.origins = null;
    }
    else {
      if (initObj.hasOwnProperty('maps')) {
        this.maps = initObj.maps
      }
      else {
        this.maps = [];
      }
      if (initObj.hasOwnProperty('origins')) {
        this.origins = initObj.origins
      }
      else {
        this.origins = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiSparseMap3D
    // Serialize message field [maps]
    // Serialize the length for message field [maps]
    bufferOffset = _serializer.uint32(obj.maps.length, buffer, bufferOffset);
    obj.maps.forEach((val) => {
      bufferOffset = SparseMap3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [origins]
    // Serialize the length for message field [origins]
    bufferOffset = _serializer.uint32(obj.origins.length, buffer, bufferOffset);
    obj.origins.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiSparseMap3D
    let len;
    let data = new MultiSparseMap3D(null);
    // Deserialize message field [maps]
    // Deserialize array length for message field [maps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.maps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.maps[i] = SparseMap3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [origins]
    // Deserialize array length for message field [origins]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.origins = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.origins[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.maps.forEach((val) => {
      length += SparseMap3D.getMessageSize(val);
    });
    length += 56 * object.origins.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_map_server/MultiSparseMap3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e3d76c98ee3e2b23a422f64965f6418';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SparseMap3D[] maps
    geometry_msgs/Pose[] origins
    
    ================================================================================
    MSG: multi_map_server/SparseMap3D
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
    const resolved = new MultiSparseMap3D(null);
    if (msg.maps !== undefined) {
      resolved.maps = new Array(msg.maps.length);
      for (let i = 0; i < resolved.maps.length; ++i) {
        resolved.maps[i] = SparseMap3D.Resolve(msg.maps[i]);
      }
    }
    else {
      resolved.maps = []
    }

    if (msg.origins !== undefined) {
      resolved.origins = new Array(msg.origins.length);
      for (let i = 0; i < resolved.origins.length; ++i) {
        resolved.origins[i] = geometry_msgs.msg.Pose.Resolve(msg.origins[i]);
      }
    }
    else {
      resolved.origins = []
    }

    return resolved;
    }
};

module.exports = MultiSparseMap3D;
