#include "planner_manager/planner_manager.h"
void TrajServer::init(ros::NodeHandle& nh)
{
  despoint_vis_pub = nh.advertise<visualization_msgs::Marker>("point/vis", 20); 
  control_cmd_pub  = nh.advertise<quadrotor_msgs::PositionCommand>("controller_cmd/"+to_string(id), 20); 
  cmd_timer        = nh.createTimer(ros::Duration(0.01), &TrajServer::cmdCallback, this);
  ROS_WARN("[Traj server]: ready.");
}

void TrajServer::tempRenderAPoint(Vector3d pt, Vector3d color)
{
    visualization_msgs::Marker sphere;
    sphere.header.frame_id      = "world";
    sphere.header.stamp         = ros::Time::now();
    sphere.type                 = visualization_msgs::Marker::SPHERE;
    sphere.action               = visualization_msgs::Marker::ADD;
    sphere.id                   = id;
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

void TrajServer::receiveOdom(const nav_msgs::Odometry& msg)
{
  if(has_odom == false){ cout <<"[TRAJ_SERVER] has odometry "<<endl; }
  has_odom = true;
  odometry_pos[0] = msg.pose.pose.position.x;
  odometry_pos[1] = msg.pose.pose.position.y;
  odometry_pos[2] = msg.pose.pose.position.z;

  
  odometry_vel[0] = msg.twist.twist.linear.x;
  odometry_vel[1] = msg.twist.twist.linear.y;
  odometry_vel[2] = msg.twist.twist.linear.z;

  // Optional

  // Eigen::Quaterniond q( msg->pose.pose.orientation.w,
	// 		                  msg->pose.pose.orientation.x,
	// 	                  	msg->pose.pose.orientation.y,
	// 	                  	msg->pose.pose.orientation.z );
  // Eigen::Matrix3d R(q);
  // odometry_yaw = atan2(R.col(0)[1],R.col(0)[0]);
}

void TrajServer::receiveTraj(Trajectory traj, ros::Time timestamp)
{
  trajectory = traj;
  traj_duration = traj.getTotalDuration();
  start_time  = timestamp;
  if(has_traj == false){ cout <<"[TRAJ_SERVER] has trajectory "<<endl; }
  has_traj = true;
}


void TrajServer::cmdCallback(const ros::TimerEvent &e)
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
