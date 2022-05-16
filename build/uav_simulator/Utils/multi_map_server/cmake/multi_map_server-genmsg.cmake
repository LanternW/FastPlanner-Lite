# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multi_map_server: 4 messages, 0 services")

set(MSG_I_FLAGS "-Imulti_map_server:/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multi_map_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" NAME_WE)
add_custom_target(_multi_map_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_map_server" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" "nav_msgs/MapMetaData:multi_map_server/SparseMap3D:multi_map_server/VerticalOccupancyGridList:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" NAME_WE)
add_custom_target(_multi_map_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_map_server" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" "nav_msgs/MapMetaData:multi_map_server/VerticalOccupancyGridList:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" NAME_WE)
add_custom_target(_multi_map_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_map_server" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" ""
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" NAME_WE)
add_custom_target(_multi_map_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_map_server" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" "nav_msgs/MapMetaData:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server
)
_generate_msg_cpp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server
)
_generate_msg_cpp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server
)
_generate_msg_cpp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server
)

### Generating Services

### Generating Module File
_generate_module_cpp(multi_map_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multi_map_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multi_map_server_generate_messages multi_map_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_cpp _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_cpp _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_cpp _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_cpp _multi_map_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_map_server_gencpp)
add_dependencies(multi_map_server_gencpp multi_map_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_map_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server
)
_generate_msg_eus(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server
)
_generate_msg_eus(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server
)
_generate_msg_eus(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server
)

### Generating Services

### Generating Module File
_generate_module_eus(multi_map_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(multi_map_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(multi_map_server_generate_messages multi_map_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_eus _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_eus _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_eus _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_eus _multi_map_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_map_server_geneus)
add_dependencies(multi_map_server_geneus multi_map_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_map_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server
)
_generate_msg_lisp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server
)
_generate_msg_lisp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server
)
_generate_msg_lisp(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server
)

### Generating Services

### Generating Module File
_generate_module_lisp(multi_map_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multi_map_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multi_map_server_generate_messages multi_map_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_lisp _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_lisp _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_lisp _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_lisp _multi_map_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_map_server_genlisp)
add_dependencies(multi_map_server_genlisp multi_map_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_map_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server
)
_generate_msg_nodejs(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server
)
_generate_msg_nodejs(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server
)
_generate_msg_nodejs(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server
)

### Generating Services

### Generating Module File
_generate_module_nodejs(multi_map_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(multi_map_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(multi_map_server_generate_messages multi_map_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_nodejs _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_nodejs _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_nodejs _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_nodejs _multi_map_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_map_server_gennodejs)
add_dependencies(multi_map_server_gennodejs multi_map_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_map_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server
)
_generate_msg_py(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server
)
_generate_msg_py(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server
)
_generate_msg_py(multi_map_server
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server
)

### Generating Services

### Generating Module File
_generate_module_py(multi_map_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multi_map_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multi_map_server_generate_messages multi_map_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiSparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_py _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/SparseMap3D.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_py _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/VerticalOccupancyGridList.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_py _multi_map_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server/msg/MultiOccupancyGrid.msg" NAME_WE)
add_dependencies(multi_map_server_generate_messages_py _multi_map_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_map_server_genpy)
add_dependencies(multi_map_server_genpy multi_map_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_map_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_map_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(multi_map_server_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(multi_map_server_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_map_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(multi_map_server_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(multi_map_server_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_map_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(multi_map_server_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(multi_map_server_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_map_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(multi_map_server_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(multi_map_server_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_map_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(multi_map_server_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(multi_map_server_generate_messages_py nav_msgs_generate_messages_py)
endif()
