# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "map_manager;planner_algorithm;roscpp;rospy;std_msgs;sensor_msgs;geometry_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lplanner_manager".split(';') if "-lplanner_manager" != "" else []
PROJECT_NAME = "planner_manager"
PROJECT_SPACE_DIR = "/home/lantern/ROS_workspace/MotionPlanning/install"
PROJECT_VERSION = "0.0.0"
