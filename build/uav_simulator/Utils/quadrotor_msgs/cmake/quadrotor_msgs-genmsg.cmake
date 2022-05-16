# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "quadrotor_msgs: 13 messages, 0 services")

set(MSG_I_FLAGS "-Iquadrotor_msgs:/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(quadrotor_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" ""
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:quadrotor_msgs/AuxCommand:std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" ""
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" "quadrotor_msgs/AuxCommand:std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" "nav_msgs/Odometry:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" ""
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" NAME_WE)
add_custom_target(_quadrotor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quadrotor_msgs" "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" "geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_cpp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(quadrotor_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(quadrotor_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(quadrotor_msgs_generate_messages quadrotor_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_cpp _quadrotor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quadrotor_msgs_gencpp)
add_dependencies(quadrotor_msgs_gencpp quadrotor_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quadrotor_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_eus(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(quadrotor_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(quadrotor_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(quadrotor_msgs_generate_messages quadrotor_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_eus _quadrotor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quadrotor_msgs_geneus)
add_dependencies(quadrotor_msgs_geneus quadrotor_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quadrotor_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_lisp(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(quadrotor_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(quadrotor_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(quadrotor_msgs_generate_messages quadrotor_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_lisp _quadrotor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quadrotor_msgs_genlisp)
add_dependencies(quadrotor_msgs_genlisp quadrotor_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quadrotor_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_nodejs(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(quadrotor_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(quadrotor_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(quadrotor_msgs_generate_messages quadrotor_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_nodejs _quadrotor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quadrotor_msgs_gennodejs)
add_dependencies(quadrotor_msgs_gennodejs quadrotor_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quadrotor_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)
_generate_msg_py(quadrotor_msgs
  "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(quadrotor_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(quadrotor_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(quadrotor_msgs_generate_messages quadrotor_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PPROutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Gains.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/LQRTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Odometry.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/quadrotor_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(quadrotor_msgs_generate_messages_py _quadrotor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quadrotor_msgs_genpy)
add_dependencies(quadrotor_msgs_genpy quadrotor_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quadrotor_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quadrotor_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(quadrotor_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(quadrotor_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quadrotor_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(quadrotor_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(quadrotor_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quadrotor_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(quadrotor_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(quadrotor_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quadrotor_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(quadrotor_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(quadrotor_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quadrotor_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(quadrotor_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(quadrotor_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
