#include <newmsg.h>
#include "std_msgs/String.h"
#include "ros/ros.h"
#include "chatter/newmsg.h"
std_msgs::String n_msg;
bool calback(chatter::newmsg::Request &request, chatter::newmsg::Response &response)
{
    n_msg.data = request.msg;
    if(n_msg.data.empty())
        return false;
    return true;
}

int main(int ac, char **argv)
{
    ros::init(ac, argv, "talker");
    ros::NodeHandle nh;
    ros::Publisher pb = nh.advertise<std_msgs::String>("chat", 1000);
    ros::ServiceServer srv = nh.advertiseService("new_msg", calback);

    n_msg.data ="hi there";
    ros::Rate _wait(10);
    while(ros::ok())
    {
        std_msgs::String msg;
        msg = n_msg;
        pb.publish(msg);
        ros::spinOnce();
        _wait.sleep();
    }
}