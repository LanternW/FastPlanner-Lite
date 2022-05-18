#ifndef PLANNER_MANAGER_H
#define PLANNER_MANAGER_H

#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <std_msgs/Empty.h>
#include <Eigen/Eigen>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Odometry.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <string.h>
#include <geometry_msgs/PoseStamped.h>
#include <visualization_msgs/Marker.h>
#include <nav_msgs/Odometry.h>

#include "map_manager/PCSmap_manager.h"
#include "planner_manager/Polynome.h"
#include "planner_algorithm/poly_traj_utils.hpp"
#include "planner_algorithm/poly_traj_ext.hpp"
#include "planner_algorithm/front_end_Astar.h"
#include "planner_algorithm/back_end_optimizer.h"

#include "quadrotor_msgs/PositionCommand.h"
#include "geometry_msgs/Pose.h"
#include "visualization_msgs/Marker.h"
using namespace Eigen;

class TrajServer
{
  public:
    int id;
    void init(ros::NodeHandle& nh);
    void tempRenderAPoint(Vector3d pt, Vector3d color);
    void receiveTraj(Trajectory traj, ros::Time timestamp);
    void receiveOdom(const nav_msgs::Odometry& msg);
    void cmdCallback(const ros::TimerEvent &e);
    TrajServer(){dt = 0.1; has_odom = false; has_traj = false;}
  public:
    ros::Subscriber traj_sub;        
    ros::Subscriber odom_sub;        
    ros::Publisher despoint_vis_pub; 
    ros::Publisher control_cmd_pub;
    ros::Timer cmd_timer;            

    ros::Time start_time;
  private:
    Vector3d  odometry_pos;
    Vector3d  odometry_vel;
    double    odometry_yaw;

    Trajectory trajectory;
    minco::MinJerkOpt jerkOpt_;

    double traj_duration;
    double dt;
    double t_cur;
    bool has_traj;
    bool has_odom;
};

class PlannerManager
{
  public:
    int planner_id;  //used in swarm.
    PlannerManager(){};
    ~PlannerManager(){};
    void init(ros::NodeHandle& nh);
    void init(ros::NodeHandle& nh, PCSmapManager::Ptr map_manager);

    void mapRcvCallBack(const std_msgs::Empty& msg);
    void targetRcvCallBack(const geometry_msgs::PoseStamped& msg);
    void odomRcvCallBack(const nav_msgs::Odometry& msg);
    void swarmTrajRcvCallBack(const planner_manager::PolynomeConstPtr msg);

    // point correction, for ground vehicle

    //void dropPoint(Vector3d &point);

    // vis
    void renderPath( vector<Vector3d> path );
    void renderTraj( Trajectory traj );
    void renderPoints(vector<Eigen::Vector3d> pts, Eigen::Vector3d color , double scale, int id);

    // planner
    bool generatePath( Vector3d start, Vector3d end );
    void generateTraj( vector<Vector3d> path );

    void publishTraj();


  private:

    // params
    double max_jump_height;
    double traj_parlength;
    double truncation_dis;

    //odom
    nav_msgs::Odometry recent_odom;
    bool has_odom;

    // planning
    vector<Vector3d> recent_path;
    Trajectory recent_traj;

    // swarm
    SwarmTrajManager::Ptr swarmtraj_manager;

    // ros
    ros::Subscriber target_sub;
    ros::Subscriber odom_sub;
    ros::Subscriber rcvmap_signal_sub;

    // swarm
    ros::Subscriber swarmtraj_sub;

    ros::Publisher path_vis_pub;
    ros::Publisher traj_vis_pub;
    ros::Publisher point_vis_pub;

    ros::Publisher traj_pub;

  private:
    PCSmapManager::Ptr pcsmap_manager;
    AstarPathSearcher::Ptr astar_searcher;
    TrajOpt::Ptr minco_traj_optimizer;

    TrajServer traj_server;
  
  public:
    typedef shared_ptr<PlannerManager> Ptr;
};



#endif