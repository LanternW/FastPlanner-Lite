cmake_minimum_required(VERSION 3.0.2)
project(map_manager)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  sensor_msgs
  geometry_msgs
)

find_package(Eigen3 REQUIRED)
find_package(PCL 1.7 REQUIRED)



catkin_package(
  INCLUDE_DIRS include
  #LIBRARIES map_manager
  CATKIN_DEPENDS roscpp rospy std_msgs sensor_msgs geometry_msgs
#  DEPENDS system_lib
)

add_library(map_manager_lib
  src/Gridmap.cpp
  src/PCSmap_manager.cpp 
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen3_INCLUDE_DIRS} 
  ${PCL_INCLUDE_DIRS}
)

# add_executable(resources_node src/ResourcesPool.cpp)

# target_link_libraries(resources_node
#    ${catkin_LIBRARIES}
#    ${PCL_INCLUDE_DIRS}
#    ${EIGEN3_INCLUDE_DIR}
#    ${PCL_LIBRARIES}
# )


