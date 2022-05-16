;; Auto-generated. Do not edit!


(when (boundp 'multi_map_server::SparseMap3D)
  (if (not (find-package "MULTI_MAP_SERVER"))
    (make-package "MULTI_MAP_SERVER"))
  (shadow 'SparseMap3D (find-package "MULTI_MAP_SERVER")))
(unless (find-package "MULTI_MAP_SERVER::SPARSEMAP3D")
  (make-package "MULTI_MAP_SERVER::SPARSEMAP3D"))

(in-package "ROS")
;;//! \htmlinclude SparseMap3D.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass multi_map_server::SparseMap3D
  :super ros::object
  :slots (_header _info _lists ))

(defmethod multi_map_server::SparseMap3D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    ((:lists __lists) (let (r) (dotimes (i 0) (push (instance multi_map_server::VerticalOccupancyGridList :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   (setq _lists __lists)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:lists
   (&rest __lists)
   (if (keywordp (car __lists))
       (send* _lists __lists)
     (progn
       (if __lists (setq _lists (car __lists)))
       _lists)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ;; multi_map_server/VerticalOccupancyGridList[] _lists
    (apply #'+ (send-all _lists :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;; multi_map_server/VerticalOccupancyGridList[] _lists
     (write-long (length _lists) s)
     (dolist (elem _lists)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; multi_map_server/VerticalOccupancyGridList[] _lists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lists (let (r) (dotimes (i n) (push (instance multi_map_server::VerticalOccupancyGridList :init) r)) r))
     (dolist (elem- _lists)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multi_map_server::SparseMap3D :md5sum-) "a20102f0b3a02e95070dab4140b78fb5")
(setf (get multi_map_server::SparseMap3D :datatype-) "multi_map_server/SparseMap3D")
(setf (get multi_map_server::SparseMap3D :definition-)
      "Header header
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


")



(provide :multi_map_server/SparseMap3D "a20102f0b3a02e95070dab4140b78fb5")


