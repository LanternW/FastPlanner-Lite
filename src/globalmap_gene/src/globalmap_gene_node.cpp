#include <ros/ros.h>
#include <Eigen/Eigen> 
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>
#include <geometry_msgs/TransformStamped.h>
#include <math.h>

#include <stdlib.h>
#include <time.h>

ros::Publisher global_map_pub;
double cloud_resolution;
int map_id;
double init_x, init_y, init_z;
pcl::PointCloud<pcl::PointXYZ> global_map_pcl_cloud;

using namespace Eigen;


void geneWall(double ori_x , double ori_y , double length, double width,double height)
{
    pcl::PointXYZ  s_point;

    for( double t_z = 0.0; t_z < height ; t_z += cloud_resolution )
    {
        for( double t_y = ori_y; t_y < ori_y + width ; t_y += cloud_resolution )
        {
            for( double t_x = ori_x; t_x < ori_x + length; t_x += cloud_resolution)
            {
                s_point.x = t_x + (rand() % 10) / 250.0 ;
                s_point.y = t_y + (rand() % 10) / 250.0 ;
                s_point.z = t_z + (rand() % 10) / 800.0 ;

                global_map_pcl_cloud.push_back(s_point);
            }
        }
    }
}

void geneWall(double ori_x , double ori_y ,double ori_z, double length, double width,double height)
{
    pcl::PointXYZ  s_point;

    for( double t_z = ori_z  ; t_z < height +ori_z  ; t_z += cloud_resolution )
    {
        for( double t_y = ori_y; t_y < ori_y + width ; t_y += cloud_resolution )
        {
            for( double t_x = ori_x; t_x < ori_x + length; t_x += cloud_resolution)
            {
                s_point.x = t_x + (rand() % 10) / 250.0 ;
                s_point.y = t_y + (rand() % 10) / 250.0 ;
                s_point.z = t_z + (rand() % 10) / 800.0 ;

                global_map_pcl_cloud.push_back(s_point);
            }
        }
    }
}

void geneTrangle(double ori_x , double ori_y, double height, double depth, double length)
{
    pcl::PointXYZ s_point;
    for(double t_x = ori_x; t_x < ori_x + depth; t_x += cloud_resolution)
    {   
        for(double t_y = ori_y ;  t_y < ori_y + length; t_y += cloud_resolution)
        {
            for(double t_z = 0.0 ;  t_z < (length - t_y + ori_y)*height/length ; t_z += cloud_resolution / 3.0)
            {
                if( abs(t_x - ori_x) >= 0.2 && abs(t_x - ori_x - depth) >= 0.2  &&
                    abs(t_y - ori_y) >= 0.2 && abs(t_y - ori_y - length) >= 0.2 &&
                    abs(t_z - 0.0) >= 0.2 && abs(t_z - (length - t_y + ori_y)*height/length) >= 0.2){continue;}
                s_point.x = t_x + (rand() % 10) / 250.0 ;
                s_point.y = t_y + (rand() % 10) / 250.0 ;
                s_point.z = t_z + (rand() % 10) / 800.0 ;
                global_map_pcl_cloud.push_back(s_point);
            }
        }
    }
}

void geneTrangle(double ori_x , double ori_y, double ori_z, double height, double depth, double length)
{
    pcl::PointXYZ s_point;
    for(double t_x = ori_x; t_x < ori_x + depth; t_x += cloud_resolution)
    {   
        for(double t_y = ori_y ;  t_y < ori_y + length; t_y += cloud_resolution)
        {
            for(double t_z = ori_z ;  t_z < ori_z + (length - t_y + ori_y)*height/length ; t_z += cloud_resolution / 3.0)
            {
                if( abs(t_x - ori_x) >= 0.2 && abs(t_x - ori_x - depth) >= 0.2  &&
                    abs(t_y - ori_y) >= 0.2 && abs(t_y - ori_y - length) >= 0.2 &&
                    abs(t_z - 0.0) >= 0.2 && abs(t_z - ori_z - (length - t_y + ori_y)*height/length) >= 0.2){continue;}
                s_point.x = t_x + (rand() % 10) / 250.0 ;
                s_point.y = t_y + (rand() % 10) / 250.0 ;
                s_point.z = t_z + (rand() % 10) / 800.0 ;
                global_map_pcl_cloud.push_back(s_point);
            }
        }
    }
}

void geneSinPlane(double ori_x, double ori_y, double c_z , double end_x, double end_y, double t, double h)
{
    pcl::PointXYZ s_point;
    double z,dz;
    for(double t_x = ori_x; t_x < end_x; t_x += cloud_resolution)
    {   
        for(double t_y = ori_y ;  t_y < end_y; t_y += cloud_resolution)
        {   
            dz =  h * sin(t*t_x ) + h* sin(t*t_y);
            z  =  c_z + dz;
            if(z < c_z) { z = c_z;}

            s_point.x = t_x + (rand() % 10) / 250.0 ;
            s_point.y = t_y + (rand() % 10) / 250.0 ;
            s_point.z = z + (rand() % 10) / 800.0 ;
            global_map_pcl_cloud.push_back(s_point);
        }
    }
}

void geneRoad(Vector3d start_pt, Vector3d end_pt, double width){

    pcl::PointXYZ s_point;
    Vector3d dir = end_pt - start_pt;
    double length = dir.norm();
    double t_step = cloud_resolution/length;
    double k_step = cloud_resolution/width;
    Vector3d expand(-dir(1), dir(0), 0);
    expand.normalize();
    expand *= width;

    Vector3d paver_pos, paver_hand_pos;    
    for(double t = 0; t <= 1 ; t += t_step)
    {
        paver_pos = start_pt + t * dir;
        for(double k = -0.5; k <= 0.5 ; k += k_step)
        {
            paver_hand_pos = paver_pos + k*expand;
            s_point.x = paver_hand_pos(0) + (rand() % 10) / 250.0 ;
            s_point.y = paver_hand_pos(1) + (rand() % 10) / 250.0 ;
            s_point.z = paver_hand_pos(2) + (rand() % 10) / 800.0 ;
            global_map_pcl_cloud.push_back(s_point);
        }
    }



}

void geneSpiral3D(double center_x, double center_y, double ori_z, double end_z, double radius, double width, double t)
{
    pcl::PointXYZ s_point;
    double phi = 0;
    for(double t_z = ori_z; t_z < end_z; t_z += cloud_resolution / (6*t))
    {   
        phi = t * (t_z - ori_z);
        for(double w = radius ;  w < radius + width; w += cloud_resolution)
        {    
            s_point.x = center_x + w*sin(phi) + (rand() % 10) / 250.0 ;
            s_point.y = center_y + w*cos(phi) + (rand() % 10) / 250.0 ;
            s_point.z = t_z + (rand() % 10) / 800.0 ;
            global_map_pcl_cloud.push_back(s_point);
        }
    }
}

void map1Gene()
{
    int tree_number = 280;
    double x,y;
    geneWall(0,0, 0.2, 0.2, 3.0);
    geneWall(60,60, 0.2, 0.2, 3.0);
    while(tree_number--)
    {
        x = (rand() % 3000) / 50.0 ;
        y = (rand() % 3000) / 50.0 ;
        if( sqrt((x - init_x)*(x - init_x) + (y - init_y)*(y - init_y)) < 0.09){
            tree_number++;
            continue;
        } 
        else{
            geneWall(x,y, 0.2, 0.2, 3.0);
        }
    }
    
}

void map2Gene()
{
    int tree_number = 180;
    double x,y;
    geneWall(0,0, 0.2, 0.2, 3.0);
    geneWall(60,60, 0.2, 0.2, 3.0);
    while(tree_number--)
    {
        x = (rand() % 1500) / 50.0 ;
        y = (rand() % 1500) / 50.0 ;
        if( sqrt((x - init_x)*(x - init_x) + (y - init_y)*(y - init_y)) < 0.09){
            tree_number++;
            continue;
        } 
        else{
            geneWall(x,y, 0.2, 0.2, 3.0);
        }
    }
}

void map3Gene()
{

}

void map4Gene()
{
    
}

void map5Gene()
{
    geneWall(0,0, 20, 15, 0.1);
    geneSpiral3D(7,8,0,12.4, 1.5,2, 2);
    geneWall(0,0, 21.0 ,0.1, 0.1, 0.1);
    geneWall(6.11, 9.4, 12.3 ,10.0, 2.0, 0.1);
}

void mapGene(int id)
{
    if(id == 1){map1Gene();}
    if(id == 2){map2Gene();}
    if(id == 3){map3Gene();}
    if(id == 4){map4Gene();}
    if(id == 5){map5Gene();}
}

void pubGlobalMap(int map_id)
{
    sensor_msgs::PointCloud2          global_map_cloud;

    mapGene(map_id);    

    pcl::toROSMsg(global_map_pcl_cloud, global_map_cloud);
    global_map_cloud.header.frame_id = "world";
    global_map_pub.publish(global_map_cloud);
    
    ROS_INFO("global map published! ");
}


int main (int argc, char** argv) 
{ 
    ros::init(argc, argv, "globalmap_generator"); 
    ros::NodeHandle nh("~"); 

    nh.param("cloud_resolution", cloud_resolution, 0.07);
    nh.param("map_id", map_id, 1);
    nh.param("init_x", init_x, 1.0);
    nh.param("init_y", init_y, 1.0);
    nh.param("init_z", init_z, 1.0);

    global_map_pub      = nh.advertise<sensor_msgs::PointCloud2>("globalmap", 5); 

    ros::Duration(2).sleep();
    // publish 3 times. Guarantee to be received
    int t = 3;
    while(t--)
    {
        pubGlobalMap(map_id);
        ros::Duration(1).sleep();
    }
    ros::spin();
    return 0;
}