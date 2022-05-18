#include "planner_manager/planner_manager.h"

#define SHARED_GLOBALMAP

int uav_count;
PCSmapManager::Ptr shared_globalmap_manager;
int main(int argc, char **argv)
{
  ros::init(argc, argv, "planner_manager_node");
  ros::NodeHandle nh("~");
  
  nh.param("uav_count",uav_count,1);
  vector<PlannerManager::Ptr> scf_planners;

// 所有飞机共享主机的地图对象，适用于仿真，节约内存
#ifdef SHARED_GLOBALMAP
  shared_globalmap_manager.reset(new PCSmapManager);
  shared_globalmap_manager -> init(nh);
  for(int i = 0 ; i < uav_count; i++)
  {
    PlannerManager::Ptr manager(new PlannerManager);
    manager -> planner_id = i+1;
    manager -> init(nh, shared_globalmap_manager);
    scf_planners.push_back(manager);
  }
// 每一架飞机独立存储地图,适用于真机分布式工作
#else
  for(int i = 0 ; i < uav_count; i++)
  {
    PlannerManager::Ptr manager(new PlannerManager);
    manager -> planner_id = i+1;
    manager -> init(nh);
    scf_planners.push_back(manager);
  }
#endif

  ros::Duration(1.0).sleep();
  ros::spin();

  return 0;
}