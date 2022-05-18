# FastPlanner-Lite
后端使用minco的FastPlanner全局规划器。代码简洁，供参考学习。

更新Swarm功能。
### 依赖
```
Eigen 3
PCL 1.7
pygame (可选)
```

### build and  run
```
catkin_make -DCMAKE_BUILD_TYPE=Release
```
如果报错找不到Polynome.h 或PositionCommand.h，大概率是编译顺序问题，可以手动把Polynome.h文件放进devel/include/planner_manager里, PositionCommand.h 放进devel/include/quadrotor_msgs里。
```
source devel/setup.bash
```
```
roslaunch planner_manager run_in_sim.launch
```
使用3D Nav Goal选择目标点。
修改run_in_sim.launch的uav_count参数，可以修改接入规划的飞机数量。

map1较大，如果电脑性能弱，run_in_sim.launch 172行map_id改为2试试，这幅地图更小。
### ESDF可视化工具
```
rosrun debug grad_viewer.py
```
W键和S键选择绘制的z轴高度，B键绘制，Q键退出。
