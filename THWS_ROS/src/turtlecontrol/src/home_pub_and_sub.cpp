#include "ros/ros.h"
#include <geometry_msgs/Twist.h>
#include "turtlesim/Pose.h"
struct cod_
{
    float x, y, theta;
};
cod_ *t_pos = new cod_;
void callback(const turtlesim::Pose cod)
{
    t_pos->x = cod.x, t_pos->y = cod.y, t_pos->theta = cod.theta;
    ROS_INFO_STREAM("coordinates: [" << cod.x << " " << cod.y << " " <<cod.theta<< "]");
}
int main(int argc, char **argv) {
    ros::init(argc, argv, "home_pub_sub");
    ros::NodeHandle p;
    ros::Subscriber home_sub = p.subscribe("turtle1/pose", 100, callback);
    ros::Publisher home_pub = p.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 100);
    geometry_msgs::Twist vel;
    vel.linear.x = 1;
    vel.angular.z = 0;
    vel.linear.y = 0;
    //vel.linear.z = t_pos->theta;
    // Set the rate at which you want to publish the message (e.g., 1 Hz)
    ros::Rate rate(0.5);
    int control = ros::ok();
    while (control)
    {
        if (round(t_pos->x) != 0 )
        {
            if (round(t_pos->theta) == 0)
            {
                vel.angular.z = 2.0;
                home_pub.publish(vel);
            }
            else
            {
                vel.angular.z = 0;
                vel.linear.x = 0.5;
                home_pub.publish(vel);
            }
            control = ros::ok();
        }
        else
        {
            vel.angular.z = 2.5;
            vel.linear.x = 0;
            vel.linear.y = 0;
            home_pub.publish(vel);
            control = 0;
        }
        ros::spinOnce();
        rate.sleep();

    }
    delete t_pos;
    return 0;
}