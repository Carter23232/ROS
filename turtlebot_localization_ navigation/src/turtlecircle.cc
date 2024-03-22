#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/Twist.h"
#include <string.h>

float curvature = 0;

void curveCallback(const std_msgs::Float32::ConstPtr& msg) {
  if(msg->data >= 0 && msg->data < 5.1) {
    curvature = msg->data;
  }
  ROS_INFO("Curvature set to: [%f]", msg->data);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "circle");
  ros::NodeHandle n;
  ros::Publisher circle_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
  ros::Subscriber sub = n.subscribe("curvature", 1000, curveCallback);
  ros::Rate loop_rate(10);

  while (ros::ok()) {
    geometry_msgs::Twist msg;
    msg.linear.x = curvature;    
    msg.linear.y = 0;    
    msg.linear.z = 0;    
    msg.angular.x = 0;    
    msg.angular.y = 0;    
    msg.angular.z = 1;    
    circle_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
