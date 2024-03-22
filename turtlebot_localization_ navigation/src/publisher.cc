#include "ros/ros.h"
#include "std_msgs/String.h"
#include <string.h>

int main(int argc, char **argv) {
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
  ros::Rate loop_rate(10);

  while (ros::ok()) {
    std_msgs::String msg;
    std::string s = "Hello, Peggy!";
    msg.data = s;
    chatter_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
