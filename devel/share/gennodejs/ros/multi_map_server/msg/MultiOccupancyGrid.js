// Auto-generated. Do not edit!

// (in-package multi_map_server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MultiOccupancyGrid {
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
    // Serializes a message object of type MultiOccupancyGrid
    // Serialize message field [maps]
    // Serialize the length for message field [maps]
    bufferOffset = _serializer.uint32(obj.maps.length, buffer, bufferOffset);
    obj.maps.forEach((val) => {
      bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type MultiOccupancyGrid
    let len;
    let data = new MultiOccupancyGrid(null);
    // Deserialize message field [maps]
    // Deserialize array length for message field [maps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.maps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.maps[i] = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset)
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
      length += nav_msgs.msg.OccupancyGrid.getMessageSize(val);
    });
    length += 56 * object.origins.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_map_server/MultiOccupancyGrid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61e63a291f11a6b1796a1edf79f34f72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/OccupancyGrid[] maps
    geometry_msgs/Pose[] origins
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiOccupancyGrid(null);
    if (msg.maps !== undefined) {
      resolved.maps = new Array(msg.maps.length);
      for (let i = 0; i < resolved.maps.length; ++i) {
        resolved.maps[i] = nav_msgs.msg.OccupancyGrid.Resolve(msg.maps[i]);
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

module.exports = MultiOccupancyGrid;
