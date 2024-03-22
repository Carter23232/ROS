#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_srvs/Empty.h"
#include "geometry_msgs/Twist.h"
#include <string.h>
#include "robprog/curvature.h"

float curvex = 0;
float curvetz = 0;

bool setCurvature(robprog::curvature::Request& request, robprog::curvature::Response& response) {
  if(request.x >= -5.0 && request.x < 5.1 && request.tz >= -5 && request.tz <= 5) {
    curvex = request.x;
    curvetz = request.tz;
    ROS_INFO("Curvature set to: [%f %f]", curvex, curvetz);
    return true;
  }
  return false;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "circle");
  ros::NodeHandle n;
  ros::Publisher circle_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
  ros::ServiceServer service = n.advertiseService("curvature", setCurvature);
  ros::Rate loop_rate(10);

  while (ros::ok()) {
    geometry_msgs::Twist msg;
    msg.linear.x = curvex;    
    msg.linear.y = 0;    
    msg.linear.z = 0;    
    msg.angular.x = 0;    
    msg.angular.y = 0;    
    msg.angular.z = curvetz;    
    circle_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
