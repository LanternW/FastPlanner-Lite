#include "planner_manager/planner_manager.h"
#include "planner_manager/Polynome.h"


void PlannerManager::init(ros::NodeHandle& nh)
{
  pcsmap_manager.reset(new PCSmapManager);
  pcsmap_manager -> init(nh);

  astar_searcher.reset(new AstarPathSearcher);
  astar_searcher -> init(nh);

  minco_traj_optimizer.reset(new TrajOpt);
  minco_traj_optimizer -> setParam(nh);
  minco_traj_optimizer -> setEnvironment(pcsmap_manager);

  nh.param("traj_parlength", traj_parlength, 2.0);

  odom_sub      = nh.subscribe("odom", 1, &PlannerManager::odomRcvCallBack, this);
  target_sub    = nh.subscribe("/goal",1, &PlannerManager::targetRcvCallBack, this);
  path_vis_pub  = nh.advertise<visualization_msgs::Marker>("path_vis", 10);
  traj_vis_pub  = nh.advertise<visualization_msgs::Marker>("traj_vis", 10);
  point_vis_pub = nh.advertise<visualization_msgs::Marker>("points_vis", 10);
  traj_pub      = nh.advertise<planner_manager::Polynome>("trajectory",3);
  rcvmap_signal_sub = nh.subscribe("/rcvmap_signal",1, &PlannerManager::mapRcvCallBack, this);
  has_odom = false;
}


void PlannerManager::odomRcvCallBack(const nav_msgs::Odometry& msg)
{
  recent_odom = msg;
  has_odom = true;
}

void PlannerManager::mapRcvCallBack(const std_msgs::Empty& msg)
{
    astar_searcher -> initGridMap(pcsmap_manager);
    cout<<"init map A*-"<<endl;
}

void PlannerManager::targetRcvCallBack(const geometry_msgs::PoseStamped& msg)
{
    Vector3d begin_pos;
    Vector3d target_pos;
    target_pos(0) = msg.pose.position.x;
    target_pos(1) = msg.pose.position.y;
    target_pos(2) = msg.pose.position.z;

    cout<<"target = " <<target_pos<<endl;

    if(has_odom)
    {
      begin_pos(0) = recent_odom.pose.pose.position.x;
      begin_pos(1) = recent_odom.pose.pose.position.y;
      begin_pos(2) = recent_odom.pose.pose.position.z;


      if( generatePath( begin_pos, target_pos ) )
      {
        generateTraj(recent_path);
      }
    }

}


bool PlannerManager::generatePath( Vector3d start, Vector3d end )
{
  vector<Vector3d> path;
  astar_searcher -> AstarPathSearch( start , end );
  if( astar_searcher -> success_flag )
  {
    path = astar_searcher -> getPath();
    renderPath(path);
  }
  else
  {
    ROS_WARN("[A*] search failed.");
  }
  astar_searcher -> reset();
  recent_path = path;
  return (astar_searcher -> success_flag);
}


void PlannerManager::generateTraj( vector<Vector3d> path )
{
  int N;
  int path_size = path.size();
  double temp_traj_parlength = traj_parlength;
  int index_gap = ceil( temp_traj_parlength / ((pcsmap_manager->occupancy_map) -> grid_resolution) );

  while( index_gap >= path_size - 1 ){
    temp_traj_parlength /= 1.5;
    index_gap = ceil( temp_traj_parlength / ((pcsmap_manager->occupancy_map) ->  grid_resolution) );
  }

  double odom_vel_x = recent_odom.twist.twist.linear.x;
  double odom_vel_y = recent_odom.twist.twist.linear.y;
  double odom_vel_z = recent_odom.twist.twist.linear.z;
  Vector3d odom_vel = Vector3d(odom_vel_x, odom_vel_y, odom_vel_z);
  bool ret_opt;
  MatrixXd initState  = MatrixXd::Zero(3,3);
  MatrixXd finalState = MatrixXd::Zero(3,3);
  initState.col(0)  = path.front();
  initState.col(1)  = odom_vel;
  finalState.col(0) = path.back();
  vector<Vector3d> Q;
  Vector3d wp;
  for( int ind = index_gap ; ind < path_size - 1 ; ind += index_gap ) 
  {
    wp = path[ind];
    Q.push_back( wp );
  }
  renderPoints(Q, Vector3d(0.5,0.5,1.0), 0.2, 1);
  N = Q.size() + 1;
  ret_opt = minco_traj_optimizer -> generate_traj( initState, finalState, Q, N, recent_traj, false);
  if(ret_opt == true)
  {
    renderTraj(recent_traj);
    publishTraj();
  }

}

void PlannerManager::publishTraj()
{
    planner_manager::Polynome poly;
    MatrixXd poses = recent_traj.getPositions();
    VectorXd ts    = recent_traj.getDurations();

    for (int i = 0; i < poses.cols(); i++)
    {
      geometry_msgs::Point temp;
      temp.x = poses(0, i);
      temp.y = poses(1, i);
      temp.z = poses(2, i);
      poly.pos_pts.push_back(temp);
    }
    for (int i = 0; i < ts.size(); i++)
    {
      poly.t_pts.push_back(ts(i));
    }
    poly.init_v.x = 0;
    poly.init_v.y = 0;
    poly.init_v.z = 0;
    poly.init_a.x = 0;
    poly.init_a.y = 0;
    poly.init_a.z = 0;
    poly.start_time = ros::Time::now();
    poly.traj_id = 1;

    traj_pub.publish(poly);
}


void PlannerManager::renderPath( vector<Vector3d> path )
{
  visualization_msgs::Marker sphere, line_strip;
  sphere.header.frame_id  = line_strip.header.frame_id  = "world";
  sphere.header.stamp     = line_strip.header.stamp     = ros::Time::now();

  sphere.type             = visualization_msgs::Marker::SPHERE_LIST;
  line_strip.type         = visualization_msgs::Marker::LINE_STRIP;

  sphere.action           = line_strip.action           = visualization_msgs::Marker::ADD;
  sphere.id               = 0;
  line_strip.id           = 1;

  sphere.pose.orientation.w   = line_strip.pose.orientation.w  = 1.0;
  sphere.color.r              = line_strip.color.r             = 0.4;
  sphere.color.g              = line_strip.color.g             = 1.0;
  sphere.color.b              = line_strip.color.b             = 0.4;
  sphere.color.a              = line_strip.color.a             = 0.8;
  sphere.scale.x              = line_strip.scale.x             = 0.1;
  sphere.scale.y              = line_strip.scale.y             = 0.1;
  sphere.scale.z              = line_strip.scale.z             = 0.1;

  geometry_msgs::Point pt;
  Vector3d ptv;
  for(int i = 0 ; i < path.size(); i++)
  {
      ptv = path[i];
      pt.x = ptv(0);
      pt.y = ptv(1);
      pt.z = ptv(2);
      sphere.points.push_back(pt);
      line_strip.points.push_back(pt);
  }
  path_vis_pub.publish(sphere);
  path_vis_pub.publish(line_strip);
}


void PlannerManager::renderTraj( Trajectory traj )
{
  visualization_msgs::Marker traj_vis;
  traj_vis.header.stamp       = ros::Time::now();
  traj_vis.header.frame_id    = "world";
  traj_vis.id   = 4;
  traj_vis.type = visualization_msgs::Marker::LINE_STRIP;
  traj_vis.scale.x = 0.1;
  traj_vis.scale.y = 0.1;
  traj_vis.scale.z = 0.1;
  traj_vis.pose.orientation.x = 0.0;
  traj_vis.pose.orientation.y = 0.0;
  traj_vis.pose.orientation.z = 0.0;
  traj_vis.pose.orientation.w = 1.0;

  traj_vis.color.a = 1.0;
  traj_vis.color.r = 1.0;
  traj_vis.color.g = 1.0;
  traj_vis.color.b = 0.5;
  geometry_msgs::Point pt;
  Eigen::Vector3d pos;

  double t_duration = traj.getTotalDuration();
  for(double t = 0; t < t_duration; t += 0.05)
  {
      pos = traj.getPos(t);
      pt.x = pos(0);
      pt.y = pos(1);
      pt.z = pos(2);
      traj_vis.points.push_back(pt);
  }
  traj_vis_pub.publish(traj_vis);
}

void PlannerManager::renderPoints(vector<Eigen::Vector3d> pts, Eigen::Vector3d color , double scale, int id)
{
    visualization_msgs::Marker sphere;
    sphere.header.frame_id  = "world";
    sphere.header.stamp     = ros::Time::now();

    sphere.type             = visualization_msgs::Marker::SPHERE_LIST;
    sphere.action           = visualization_msgs::Marker::ADD;
    sphere.id               = id;
    sphere.pose.orientation.w   = 1.0;
    sphere.color.r              = color(0);
    sphere.color.g              = color(1);
    sphere.color.b              = color(2);
    sphere.color.a              = 0.8;
    sphere.scale.x              = scale;
    sphere.scale.y              = scale;
    sphere.scale.z              = scale;
    geometry_msgs::Point pt;
    Eigen::Vector3d ptv;
    for(int i = 0 ; i < pts.size(); i++)
    {
        ptv = pts[i];
        pt.x = ptv(0);
        pt.y = ptv(1);
        pt.z = ptv(2);
        sphere.points.push_back(pt);
    }
    point_vis_pub.publish(sphere);
}