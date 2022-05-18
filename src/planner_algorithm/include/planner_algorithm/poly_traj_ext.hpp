#pragma once

#include "planner_algorithm/poly_traj_utils.hpp"
using namespace std;

class TrajWithId
{
  public:
    Trajectory trajectory;
    ros::Time start_time;
    int id;
  public:
    typedef shared_ptr<TrajWithId> Ptr;
};

class SwarmTrajManager
{
  public:
    SwarmTrajManager(){trajs.clear();}
    void insertTraj(const Trajectory traj, const int traj_id, const ros::Time start_time)
    {
      bool exist_sameid = false;
      for(int i = 0 ; i < trajs.size() ; i++) {
            if(trajs[i]->id == traj_id){ 
              trajs[i]->trajectory = traj; 
              trajs[i]->start_time = start_time; 
              exist_sameid = true;
              break;
            }
      }
      if(exist_sameid == false)
      {
        TrajWithId::Ptr traj_wi(new TrajWithId);
        traj_wi->trajectory  = traj;
        traj_wi->id          = traj_id;
        traj_wi->start_time  = start_time;
        trajs.push_back(traj_wi);
      }
    }

    vector<TrajWithId::Ptr> trajs;
  public:
    typedef shared_ptr<SwarmTrajManager> Ptr;
};