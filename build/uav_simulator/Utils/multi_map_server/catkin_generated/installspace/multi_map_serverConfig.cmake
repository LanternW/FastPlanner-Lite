# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(multi_map_server_CONFIG_INCLUDED)
  return()
endif()
set(multi_map_server_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(multi_map_server_SOURCE_PREFIX /home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/multi_map_server)
  set(multi_map_server_DEVEL_PREFIX /home/lantern/ROS_workspace/MotionPlanning/devel)
  set(multi_map_server_INSTALL_PREFIX "")
  set(multi_map_server_PREFIX ${multi_map_server_DEVEL_PREFIX})
else()
  set(multi_map_server_SOURCE_PREFIX "")
  set(multi_map_server_DEVEL_PREFIX "")
  set(multi_map_server_INSTALL_PREFIX /home/lantern/ROS_workspace/MotionPlanning/install)
  set(multi_map_server_PREFIX ${multi_map_server_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'multi_map_server' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(multi_map_server_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include " STREQUAL " ")
  set(multi_map_server_INCLUDE_DIRS "")
  set(_include_dirs "include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://ros.org/wiki/multi_map_server " STREQUAL " ")
    set(_report "Check the website 'http://ros.org/wiki/multi_map_server' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Shaojie Shen <eeshaojie@todo.todo>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${multi_map_server_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'multi_map_server' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'multi_map_server' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(multi_map_server_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND multi_map_server_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND multi_map_server_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT multi_map_server_NUM_DUMMY_TARGETS)
      set(multi_map_server_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::multi_map_server::wrapped-linker-option${multi_map_server_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR multi_map_server_NUM_DUMMY_TARGETS "${multi_map_server_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::multi_map_server::wrapped-linker-option${multi_map_server_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND multi_map_server_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND multi_map_server_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND multi_map_server_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/lantern/ROS_workspace/MotionPlanning/install/lib;/home/lantern/ROS_workspace/MotionPlanning/devel/lib;/home/lantern/ROS_workspace/livox-driver-r2live/devel/lib;/home/lantern/catkin_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(multi_map_server_LIBRARY_DIRS ${lib_path})
      list(APPEND multi_map_server_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'multi_map_server'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND multi_map_server_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(multi_map_server_EXPORTED_TARGETS "multi_map_server_generate_messages_cpp;multi_map_server_generate_messages_eus;multi_map_server_generate_messages_lisp;multi_map_server_generate_messages_nodejs;multi_map_server_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${multi_map_server_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "geometry_msgs;nav_msgs;quadrotor_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 multi_map_server_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${multi_map_server_dep}_FOUND)
      find_package(${multi_map_server_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${multi_map_server_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(multi_map_server_INCLUDE_DIRS ${${multi_map_server_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(multi_map_server_LIBRARIES ${multi_map_server_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${multi_map_server_dep}_LIBRARIES})
  _list_append_deduplicate(multi_map_server_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(multi_map_server_LIBRARIES ${multi_map_server_LIBRARIES})

  _list_append_unique(multi_map_server_LIBRARY_DIRS ${${multi_map_server_dep}_LIBRARY_DIRS})
  list(APPEND multi_map_server_EXPORTED_TARGETS ${${multi_map_server_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "multi_map_server-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${multi_map_server_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
