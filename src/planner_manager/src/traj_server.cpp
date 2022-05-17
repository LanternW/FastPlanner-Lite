#include <ros/ros.h>
#include "planner_manager/Polynome.h"
// #include "planner_manager/PositionCommand.h"
#include "quadrotor_msgs/PositionCommand.h"
#include "planner_algorithm/poly_traj_utils.hpp"
#include "planner_algorithm/back_end_optimizer.h"

#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/Pose.h"
#include "visualization_msgs/Marker.h"
using namespace Eigen;

ros::Publisher despoint_vis_pub;    // desire pos visualization
ros::Publisher control_cmd_pub;     // /pos_cmd to UAV

double dt = 0.1;
double t_cur;

bool has_traj = false;
bool has_odom = false;

Trajectory trajectory;
minco::MinJerkOpt jerkOpt_;
double traj_duration;
ros::Time start_time;
int traj_id;


//odometry on real time
Eigen::Vector3d  odometry_pos;
Eigen::Vector3d  odometry_vel;
double           odometry_yaw;

void tempRenderAPoint(Vector3d pt, Vector3d color)
{
    visualization_msgs::Marker sphere;
    sphere.header.frame_id      = "world";
    sphere.header.stamp         = ros::Time::now();
    sphere.type                 = visualization_msgs::Marker::SPHERE;
    sphere.action               = visualization_msgs::Marker::ADD;
    sphere.id                   = 1;
    sphere.pose.orientation.w   = 1.0;
    sphere.color.r              = color(0);
    sphere.color.g              = color(1);
    sphere.color.b              = color(2);
    sphere.color.a              = 0.8;
    sphere.scale.x              = 0.2;
    sphere.scale.y              = 0.2;
    sphere.scale.z              = 0.2;
    sphere.pose.position.x      = pt(0);
    sphere.pose.position.y      = pt(1);
    sphere.pose.position.z      = pt(2);
    despoint_vis_pub.publish(sphere);
}

void rcvOdomCallBack(nav_msgs::OdometryPtr msg)
{
  if(has_odom == false){ cout <<"[TRAJ_SERVER] has odometry "<<endl; }
  has_odom = true;
  odometry_pos[0] = msg->pose.pose.position.x;
  odometry_pos[1] = msg->pose.pose.position.y;
  odometry_pos[2] = msg->pose.pose.position.z;

  
  odometry_vel[0] = msg->twist.twist.linear.x;
  odometry_vel[1] = msg->twist.twist.linear.y;
  odometry_vel[2] = msg->twist.twist.linear.z;

  // Optional

  // Eigen::Quaterniond q( msg->pose.pose.orientation.w,
	// 		                  msg->pose.pose.orientation.x,
	// 	                  	msg->pose.pose.orientation.y,
	// 	                  	msg->pose.pose.orientation.z );
  // Eigen::Matrix3d R(q);
  // odometry_yaw = atan2(R.col(0)[1],R.col(0)[0]);
  
}

void polynomialTrajCallback(planner_manager::PolynomeConstPtr msg)
{
  // parse pos traj
  MatrixXd posP(3, msg -> pos_pts.size() - 2);
  VectorXd T(msg -> t_pts.size());
  MatrixXd initS, tailS;

  for (int i = 1; i < msg -> pos_pts.size() - 1 ;i++)
  {
    posP(0, i-1) = msg->pos_pts[i].x;
    posP(1, i-1) = msg->pos_pts[i].y;
    posP(2, i-1) = msg->pos_pts[i].z;
  }
  for (int i=0; i<msg->t_pts.size();i++)
  {
    T(i) = msg->t_pts[i];
  }
  
  initS.setZero(3, 3);
  tailS.setZero(3, 3);
  initS.col(0) = Vector3d(msg->pos_pts[0].x, msg->pos_pts[0].y, msg->pos_pts[0].z);
  initS.col(1) = Vector3d(msg->init_v.x, msg->init_v.y, msg->init_v.z);
  initS.col(2) = Vector3d(msg->init_a.x, msg->init_a.y, msg->init_a.z);
  tailS.col(0) = Vector3d(msg->pos_pts.back().x, msg->pos_pts.back().y, msg->pos_pts.back().z);
  tailS.col(1) = Vector3d::Zero();
  tailS.col(2) = Vector3d::Zero();
  jerkOpt_.reset(initS, msg->pos_pts.size()-1);
  jerkOpt_.generate(posP, tailS, T);

  trajectory    = jerkOpt_.getTraj();
  traj_duration = trajectory.getTotalDuration();

  start_time  = msg -> start_time;
  traj_id     = msg -> traj_id;

  if(has_traj == false){ cout <<"[TRAJ_SERVER] has trajectory "<<endl; }
  has_traj = true;
}


void cmdCallback(const ros::TimerEvent &e)
{
    if ((!has_traj) || (!has_odom))
      return;
    
    ros::Time time_now  = ros::Time::now();
    t_cur               = (time_now - start_time).toSec();

    quadrotor_msgs::PositionCommand cmd;
    cmd.header.frame_id = "world";

    if (t_cur < traj_duration && t_cur >= 0.0)
    {
      Vector3d des_pos   = trajectory.getPos(t_cur);
      Vector3d des_vel   = trajectory.getVel(t_cur);
      Vector3d des_acc   = trajectory.getAcc(t_cur);

      cmd.position.x = des_pos(0);
      cmd.position.y = des_pos(1);
      cmd.position.z = des_pos(2);

      cmd.velocity.x = des_vel(0);
      cmd.velocity.y = des_vel(1);
      cmd.velocity.z = des_vel(2);

      cmd.acceleration.x = des_acc(0);
      cmd.acceleration.y = des_acc(1);
      cmd.acceleration.z = des_acc(2);

      tempRenderAPoint(des_pos, Vector3d(0.1,0.2,0.9) );
    
      control_cmd_pub.publish(cmd);
    }

    else if(t_cur >= traj_duration)
    {
      Vector3d des_pos   = trajectory.getPos(traj_duration);
      cmd.position.x = des_pos(0);
      cmd.position.y = des_pos(1);
      cmd.position.z = des_pos(2);

      cmd.velocity.x = 0;
      cmd.velocity.y = 0;
      cmd.velocity.z = 0;

      cmd.acceleration.x = 0;
      cmd.acceleration.y = 0;
      cmd.acceleration.z = 0;

      control_cmd_pub.publish(cmd);
    }

}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "traj_server");
  ros::NodeHandle nh("~");

  ros::Subscriber traj_sub      = nh.subscribe("trajectory_topic", 10, polynomialTrajCallback);
  ros::Subscriber odom_sub      = nh.subscribe("odom", 1, rcvOdomCallBack );

  despoint_vis_pub  = nh.advertise<visualization_msgs::Marker>("point/vis", 20); 
  control_cmd_pub   = nh.advertise<quadrotor_msgs::PositionCommand>("controller_cmd", 20); 

  ros::Timer cmd_timer = nh.createTimer(ros::Duration(0.01), cmdCallback);

  ros::Duration(1.0).sleep();
  ROS_WARN("[Traj server]: ready.");
  ros::spin();

  return 0;
}