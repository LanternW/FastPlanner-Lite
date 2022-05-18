# FastPlanner-Lite
后端使用minco的FastPlanner全局规划器。代码简洁，供参考学习。

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
如果报错找不到Polynome.h 或PositionCommand.h，应该是编译顺序问题，可以手动把Polynome.h文件放进devel/include/planner_manager里, PositionCommand.h 放进devel/include/quadrotor_msgs里。
```
source devel/setup.bash
```
```
roslaunch planner_manager run_in_sim.launch
```
使用3D Nav Goal选择目标点
### ESDF可视化工具
```
rosrun debug grad_viewer.py
```
W键和S键选择绘制的z轴高度，B键绘制，Q键退出。
