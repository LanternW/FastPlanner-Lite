#ifndef PCSMAP_MANAGER_H
#define PCSMAP_MANAGER_H

#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <visualization_msgs/Marker.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Int16.h>
#include <Eigen/Eigen>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Odometry.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/sample_consensus/ransac.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/sample_consensus/sac_model_plane.h>
#include <string.h>

#define INF 0x7fffffff
#define HUGE_NUMBER 999999999

const double pi = 3.1415926535;

using namespace std;
using namespace Eigen;

class GridMap
{
    public:
        void clearGridMap();
        void releaseMemory();
        // all parameters can be set to const& type
        void createGridMap(Vector3d boundary_xyzmin, Vector3d boundary_xyzmax);
        bool isInMap(Vector3d pos_w);
        bool isIndexValid(Vector3i index);
        bool isIndexValid(int ix,int iy, int iz);
        bool isIndexCanBeNeighbor(Vector3i index); //improve A* efficiency
        bool isIndexOccupied(Vector3i index);
        bool isIndexOccupied(int ix, int iy, int iz);
        bool isCoordOccupied(Vector3d pos_w);
        bool isOverFloorInCells(Vector3i index, double distance);
        Vector3i getGridIndex(Vector3d pos_w);
        Vector3d getGridCubeCenter(Vector3i index);
        Vector3d getGridCubeCenter(int ix, int iy, int iz);

        bool isGridBoundOfObs(Vector3i index); //return true while the grid is on the boundary of a obstacle.
        int getVoxelNum(int dim);
        
        //to generate ESDF map from occupancy map
        void clearGridESDF();
        template <typename F_get_val, typename F_set_val>
        void fillESDF(F_get_val f_get_val, F_set_val f_set_val, int start, int end, int dim);
        void generateESDF3d();
        //

        double getGridSDFValue(Vector3i index);
        double getGridSDFValue(int ix, int iy, int iz);
        inline double getSDFValue(Vector3d pos_w)
        {
            /* use trilinear interpolation */
            Vector3d pos_m = pos_w - 0.5 * grid_resolution * Vector3d::Ones();
            Vector3i idx   = getGridIndex(pos_m);
            Vector3d idx_pos, diff;
            idx_pos        = getGridCubeCenter(idx);
            diff           = (pos_w - idx_pos) * (1.0/grid_resolution);

            double values[2][2][2];
            for (int x = 0; x < 2; x++) {
                for (int y = 0; y < 2; y++) {
                    for (int z = 0; z < 2; z++) {
                        Vector3i current_idx = idx + Vector3i(x, y, z);
                        if (!isInMap( getGridCubeCenter(current_idx) )) {
                            values[x][y][z] = 0;
                        }
                        values[x][y][z] = getGridSDFValue(current_idx);
                    }
                }
            }

            double v00 = (1 - diff[0]) * values[0][0][0] + diff[0] * values[1][0][0];
            double v01 = (1 - diff[0]) * values[0][0][1] + diff[0] * values[1][0][1];
            double v10 = (1 - diff[0]) * values[0][1][0] + diff[0] * values[1][1][0];
            double v11 = (1 - diff[0]) * values[0][1][1] + diff[0] * values[1][1][1];
            double v0 = (1 - diff[1]) * v00 + diff[1] * v10;
            double v1 = (1 - diff[1]) * v01 + diff[1] * v11;
            double dist = (1 - diff[2]) * v0 + diff[2] * v1;

            return dist;
        }

        inline double getSDFValueWithGrad(Vector3d pos_w, Vector3d& grad)
        {
            /* use trilinear interpolation */
            Vector3d pos_m = pos_w - 0.5 * grid_resolution * Vector3d::Ones();
            Vector3i idx   = getGridIndex(pos_m);
            Vector3d idx_pos, diff;
            idx_pos        = getGridCubeCenter(idx);
            diff           = (pos_w - idx_pos) * (1.0/grid_resolution);

            double values[2][2][2];
            for (int x = 0; x < 2; x++) {
                for (int y = 0; y < 2; y++) {
                    for (int z = 0; z < 2; z++) {
                        Vector3i current_idx = idx + Vector3i(x, y, z);
                        if (!isInMap( getGridCubeCenter(current_idx) )) {
                            values[x][y][z] = 0;
                        }
                        values[x][y][z] = getGridSDFValue(current_idx);
                    }
                }
            }

            double v00 = (1 - diff[0]) * values[0][0][0] + diff[0] * values[1][0][0];
            double v01 = (1 - diff[0]) * values[0][0][1] + diff[0] * values[1][0][1];
            double v10 = (1 - diff[0]) * values[0][1][0] + diff[0] * values[1][1][0];
            double v11 = (1 - diff[0]) * values[0][1][1] + diff[0] * values[1][1][1];
            double v0 = (1 - diff[1]) * v00 + diff[1] * v10;
            double v1 = (1 - diff[1]) * v01 + diff[1] * v11;
            double dist = (1 - diff[2]) * v0 + diff[2] * v1;

            grad[2] = (v1 - v0) * (1.0/grid_resolution);
            grad[1] = ((1 - diff[2]) * (v10 - v00) + diff[2] * (v11 - v01)) * (1.0/grid_resolution);
            grad[0] = (1 - diff[2]) * (1 - diff[1]) * (values[1][0][0] - values[0][0][0]);
            grad[0] += (1 - diff[2]) * diff[1] * (values[1][1][0] - values[0][1][0]);
            grad[0] += diff[2] * (1 - diff[1]) * (values[1][0][1] - values[0][0][1]);
            grad[0] += diff[2] * diff[1] * (values[1][1][1] - values[0][1][1]);
            grad[0] *= (1.0/grid_resolution);
            return dist;
        }

    public:
        // max index size
        int X_size;
        int Y_size;
        int Z_size;

        // map size box
        Vector3d boundary_xyzmin;
        Vector3d boundary_xyzmax;

        // map resolution
        double grid_resolution;

        // debug switch
        bool debug_output;
    
        // occupancy map and its ESDF map
        double*** grid_map; 
        double*** grid_esdf; 

        // for esdf map generation, temp buffer
        double*** grid_map_buffer_neg; 
        double*** grid_map_buffer_all; 
        double*** grid_esdf_buffer1; 
        double*** grid_esdf_buffer2; 
        
        // a flag for custom usage.
        bool*** grid_map_flags;
    
    public:
        typedef shared_ptr<GridMap> Ptr;

};

/////////////////////////////////////////////////////////////////////////

class PCSmapManager
{
    public:
        PCSmapManager();
        ~PCSmapManager();

        // param load
        void init(ros::NodeHandle& nh);

        // callback functions
        void rcvGlobalMapHandler(const sensor_msgs::PointCloud2& globalmap);
        void rcvOdomHandler(const nav_msgs::Odometry odom);
        void rcvRenderGrad(const std_msgs::Int16 msg);

        // other functions


        // map size box
        Vector3d boundary_xyzmin;
        Vector3d boundary_xyzmax;

        // map resolutions
        double occupancy_resolution;

        // some params
        // point count threshold while generating occupancy grid map using point cloud
        int sta_threshold;

        // map received flag
        bool recieved_globalmap;

        // debug output switch
        bool debug_output;
        
        // global 3D occupancy grid map
        GridMap::Ptr occupancy_map;


    private:

        pcl::PointCloud<pcl::PointXYZ>::Ptr global_pointcloud;
        pcl::KdTreeFLANN<pcl::PointXYZ> global_kdtree;

        // ros
        ros::Subscriber globalmap_sub;
        ros::Subscriber odometry_sub;
        ros::Subscriber debug_grad_sub;

        ros::Publisher  globalmap_vis_pub;
        ros::Publisher  gridmap_vis_pub;
        ros::Publisher  rcvmap_signal_pub;
        ros::Publisher  debug_grad_pub;
        
     public:
         typedef shared_ptr<PCSmapManager> Ptr;
};



#endif