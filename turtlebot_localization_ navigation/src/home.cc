#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include <string.h>

float x = 0;
float y = 0;
float t;

void homeCallback1(const turtlesim::Pose::ConstPtr& msg) {
  //all done
  if(fabs(msg->x) < 0.001 && fabs(msg->y) < 0.001 && fabs(msg->theta) < 0.001) {
    x = y = t = 0;
    ROS_INFO("I've reached my goal!");
  //rotation only
  } else if(fabs(msg->theta) > 0.001) {
    t = -0.5*msg->theta;
    x = 0;
    y = 0;
  } else if(fabs(msg->y) > 0.001) {
    y = -0.5*msg->y;
    t = 0;
    x = 0;
  } else {
    x = -0.5*msg->x;
    t = 0;
    y = 0;
  }
}

void homeCallback(const turtlesim::Pose::ConstPtr& msg) {
  //all done
  if(fabs(msg->x) < 0.001 && fabs(msg->y) < 0.001 && fabs(msg->theta) < 0.001) {
    x = y = t = 0;
    ROS_INFO("I've reached my goal!");
  //rotation only
  } else if(fabs(msg->x) < 0.001 && fabs(msg->y) < 0.001) { 
    x = 0;
    t = -0.5*msg->theta; 
  } else {
  //rotation towards goal
    float tgoal0 = atan2(msg->y,msg->x) - M_PI; 
    
    t = 0.5*((tgoal0) - msg->theta); 
    ROS_INFO("Angle %f %f %f %f", tgoal0, tgoal0 - msg->theta, msg->theta, t);
    //if in goal direction, move towards goal  
    if(fabs(t) < 0.05) {
      x = 0.5*sqrt(msg->x*msg->x + msg->y*msg->y);
    } else {
      x = 0;
    }
  }
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "circle");
  ros::NodeHandle n;
  ros::Publisher home_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
  ros::Subscriber sub = n.subscribe("/turtle1/pose", 1000, homeCallback);
  ros::Rate loop_rate(100);

  while (ros::ok()) {
    geometry_msgs::Twist msg;
    msg.linear.x = x;    
    msg.linear.y = y;    
    msg.linear.z = 0;    
    msg.angular.x = 0;    
    msg.angular.y = 0;    
    msg.angular.z = t;    
    home_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
