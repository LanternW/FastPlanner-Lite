# FastPlanner-Lite
后端使用minco的FastPlanner全局规划器。代码简洁，供参考学习。

### build and  run
```
catkin_make -DCMAKE_BUILD_TYPE=Release
```
```
source devel/setup.bash
```
```
roslaunch plan_manager run_in_sim.launch
```
### ESDF可视化工具
```
rosrun debug grad_viewer.py
```
W键和S键选择绘制的z轴高度，B键绘制，Q键退出。
