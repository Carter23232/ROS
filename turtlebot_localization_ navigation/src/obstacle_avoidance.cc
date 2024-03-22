#include <ros/ros.h>
#include "sensor_msgs/LaserScan.h"
#include <geometry_msgs/Twist.h>
#include <stdlib.h>

#include <stdio.h>

#define DEG M_PI/180.0
#define RAD 180.0/M_PI

class ObstacleAvoidance {

public:
  ObstacleAvoidance() {
    pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
    sub = n.subscribe("scan", 1, &ObstacleAvoidance::computeVelocity, this);
  }

  void computeVelocity(const sensor_msgs::LaserScanConstPtr& scan ) {
    
    bool obstacle = false;
    float distance = max_dist;
    float velocity = 0;

    unsigned int size = scan->ranges.size();
    float angle_increment = scan->angle_increment;
    unsigned int count = angle/angle_increment;

    // Distance 
    // lower half
    for (unsigned int i = 0; i < count; i++) {
      if(isinf(scan->ranges[i])) continue;
      if(scan->ranges[i] > 0 && scan->ranges[i] < min_dist) {
        obstacle = true;
	      ROS_ERROR("STOP");
	      break;
      }
      if(scan->ranges[i] > min_dist && scan->ranges[i] < max_dist) {
        if(scan->ranges[i] < distance) distance = scan->ranges[i];
      }
    }
    // upper half
    for (unsigned int i = scan->ranges.size() - count; i < scan->ranges.size(); i++) {
      if(isinf(scan->ranges[i])) continue;
      if(scan->ranges[i] > 0 && scan->ranges[i] < min_dist) {
        obstacle = true;
	      ROS_ERROR("STOP");
	      break;
      }
      if(scan->ranges[i] > min_dist && scan->ranges[i] < max_dist) {
        if(scan->ranges[i] < distance) distance = scan->ranges[i];
      }
    }
    
    // Compute velocity
    velocity = obstacle ? 0 : max_vel * distance / max_dist;

    // Compute direction
    float orientation_weight = 0;
    float sinsum = 0.0;
    float cossum = 0.0;
    float theta = 0;
    //starting angles
    for (unsigned int i = 0; i < size/4; i++) {
      float range = scan->ranges[i];
      float range_weight = isinf(range) ? 1.0 : (1.0/(1.0 + exp(-(range - 1.50)/0.20)));
      float phi = scan->angle_min + angle_increment*(float)i;
      float orientation_weight = cos(phi/1.2) * range_weight;
      sinsum += sin(phi) * orientation_weight;
      cossum += cos(phi) * orientation_weight;
    }
    //finishing angles
    for (unsigned int i = 0; i < size/4; i++) {
      float range = scan->ranges[scan->ranges.size() - i - 1];
      float range_weight = isinf(range) ? 1.0 : (1.0/(1.0 + exp(-(range - 1.50)/0.20)));
      //range = 0.0;
      float phi = scan->angle_min - angle_increment*(float)i;
      float orientation_weight = cos(phi/1.2) * range_weight;
      //ROS_ERROR("%f %f %f %f", range, range_weight, cos(phi/1.2), orientation_weight);
      sinsum += sin(phi) * orientation_weight;
      cossum += cos(phi) * orientation_weight;
    }
    
    if(fabs(sinsum) > 0.000001) theta = atan2(sinsum, cossum); 

    ROS_ERROR("%f %f", velocity, theta);
    geometry_msgs::Twist msg;
    msg.linear.x = velocity; 
    msg.angular.z = theta;
    pub.publish(msg);
  }
  
  private:
    ros::NodeHandle n;
    ros::Publisher pub;
    ros::Subscriber sub;
    
    double max_dist = 1.0;
    double min_dist = 0.2;
    double max_vel = 0.5;
    double angle = 30*DEG;
}; 

int main(int argc, char** argv)
{
  ros::init(argc, argv, "obstacle_avoidance");
  ObstacleAvoidance avoid;
  
  ros::spin();

}

