# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "planner_manager: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iplanner_manager:/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(planner_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" NAME_WE)
add_custom_target(_planner_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner_manager" "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" NAME_WE)
add_custom_target(_planner_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner_manager" "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" "geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner_manager
)
_generate_msg_cpp(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner_manager
)

### Generating Services

### Generating Module File
_generate_module_cpp(planner_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(planner_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(planner_manager_generate_messages planner_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_cpp _planner_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_cpp _planner_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_manager_gencpp)
add_dependencies(planner_manager_gencpp planner_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner_manager
)
_generate_msg_eus(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner_manager
)

### Generating Services

### Generating Module File
_generate_module_eus(planner_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(planner_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(planner_manager_generate_messages planner_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_eus _planner_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_eus _planner_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_manager_geneus)
add_dependencies(planner_manager_geneus planner_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner_manager
)
_generate_msg_lisp(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner_manager
)

### Generating Services

### Generating Module File
_generate_module_lisp(planner_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(planner_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(planner_manager_generate_messages planner_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_lisp _planner_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_lisp _planner_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_manager_genlisp)
add_dependencies(planner_manager_genlisp planner_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner_manager
)
_generate_msg_nodejs(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner_manager
)

### Generating Services

### Generating Module File
_generate_module_nodejs(planner_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(planner_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(planner_manager_generate_messages planner_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_nodejs _planner_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_nodejs _planner_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_manager_gennodejs)
add_dependencies(planner_manager_gennodejs planner_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner_manager
)
_generate_msg_py(planner_manager
  "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner_manager
)

### Generating Services

### Generating Module File
_generate_module_py(planner_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(planner_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(planner_manager_generate_messages planner_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/Polynome.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_py _planner_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lantern/ROS_workspace/MotionPlanning/src/planner_manager/msg/PositionCommand.msg" NAME_WE)
add_dependencies(planner_manager_generate_messages_py _planner_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_manager_genpy)
add_dependencies(planner_manager_genpy planner_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(planner_manager_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(planner_manager_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(planner_manager_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(planner_manager_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(planner_manager_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(planner_manager_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(planner_manager_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(planner_manager_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(planner_manager_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(planner_manager_generate_messages_py geometry_msgs_generate_messages_py)
endif()
