#include "ros/ros.h"
#include "std_msgs/String.h"

void callback(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("[%s]", msg->data.c_str());
}

int main(int ac, char **argv)
{
    ros::init(ac,argv, "talker");
    ros::NodeHandle nh;
    ros::Subscriber sb = nh.subscribe("chat", 1000, callback);
    ros::spin();
}