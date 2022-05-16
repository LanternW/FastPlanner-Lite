;; Auto-generated. Do not edit!


(when (boundp 'multi_map_server::MultiOccupancyGrid)
  (if (not (find-package "MULTI_MAP_SERVER"))
    (make-package "MULTI_MAP_SERVER"))
  (shadow 'MultiOccupancyGrid (find-package "MULTI_MAP_SERVER")))
(unless (find-package "MULTI_MAP_SERVER::MULTIOCCUPANCYGRID")
  (make-package "MULTI_MAP_SERVER::MULTIOCCUPANCYGRID"))

(in-package "ROS")
;;//! \htmlinclude MultiOccupancyGrid.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass multi_map_server::MultiOccupancyGrid
  :super ros::object
  :slots (_maps _origins ))

(defmethod multi_map_server::MultiOccupancyGrid
  (:init
   (&key
    ((:maps __maps) (let (r) (dotimes (i 0) (push (instance nav_msgs::OccupancyGrid :init) r)) r))
    ((:origins __origins) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _maps __maps)
   (setq _origins __origins)
   self)
  (:maps
   (&rest __maps)
   (if (keywordp (car __maps))
       (send* _maps __maps)
     (progn
       (if __maps (setq _maps (car __maps)))
       _maps)))
  (:origins
   (&rest __origins)
   (if (keywordp (car __origins))
       (send* _origins __origins)
     (progn
       (if __origins (setq _origins (car __origins)))
       _origins)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid[] _maps
    (apply #'+ (send-all _maps :serialization-length)) 4
    ;; geometry_msgs/Pose[] _origins
    (apply #'+ (send-all _origins :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid[] _maps
     (write-long (length _maps) s)
     (dolist (elem _maps)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _origins
     (write-long (length _origins) s)
     (dolist (elem _origins)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid[] _maps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _maps (let (r) (dotimes (i n) (push (instance nav_msgs::OccupancyGrid :init) r)) r))
     (dolist (elem- _maps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _origins
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _origins (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _origins)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multi_map_server::MultiOccupancyGrid :md5sum-) "61e63a291f11a6b1796a1edf79f34f72")
(setf (get multi_map_server::MultiOccupancyGrid :datatype-) "multi_map_server/MultiOccupancyGrid")
(setf (get multi_map_server::MultiOccupancyGrid :definition-)
      "nav_msgs/OccupancyGrid[] maps
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

")



(provide :multi_map_server/MultiOccupancyGrid "61e63a291f11a6b1796a1edf79f34f72")


