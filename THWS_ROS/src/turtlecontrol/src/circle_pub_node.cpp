#include <circle_service.h>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "std_msgs/String.h"
#include "circle_serviceRequest.h"

float x=0, y=0;
bool cir_srv(turtlecontrol::circle_service::Request &request, turtlecontrol::circle_service::Response &response)
{
    if (request.x < 0)
        return false;
    x = request.x;
    y = request.tz;
    ROS_INFO("Received request - x: %f, tz: %f", request.x, request.tz);
    return true;
}
int main(int argc, char **argv) {
    ros::init(argc, argv, "cir_vira");
    ros::NodeHandle nh;
    ros::Publisher circle_pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 100);
    ros::ServiceServer cir_ser = nh.advertiseService("cir_service", cir_srv);

    // Use a ros::Rate object to control the loop rate
    ros::Rate rate(10);

    while (ros::ok())
    {
        geometry_msgs::Twist cir;
        cir.linear.x = x;
        cir.angular.z = y; // Adjust the angular velocity as needed for your circular motion

        circle_pub.publish(cir);
        ros::spinOnce();
        // Sleep to control the loop rate
        rate.sleep();
    }

    return 0;
}
