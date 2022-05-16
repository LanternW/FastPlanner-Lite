# Install script for directory: /home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/cmake_utils

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lantern/ROS_workspace/MotionPlanning/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lantern/ROS_workspace/MotionPlanning/build/uav_simulator/Utils/cmake_utils/catkin_generated/installspace/cmake_utils.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake_utils/cmake" TYPE FILE FILES
    "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/cmake_utils/cmake/arch.cmake"
    "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/cmake_utils/cmake/cmake_modules.cmake"
    "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/cmake_utils/cmake/color.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake_utils/cmake" TYPE FILE FILES
    "/home/lantern/ROS_workspace/MotionPlanning/build/uav_simulator/Utils/cmake_utils/catkin_generated/installspace/cmake_utilsConfig.cmake"
    "/home/lantern/ROS_workspace/MotionPlanning/build/uav_simulator/Utils/cmake_utils/catkin_generated/installspace/cmake_utilsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake_utils" TYPE FILE FILES "/home/lantern/ROS_workspace/MotionPlanning/src/uav_simulator/Utils/cmake_utils/package.xml")
endif()

