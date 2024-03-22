#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Quaternion.h>
#include <tf/tf.h>

double x = 0;
double y = 0;
double dlo;
double dro;
double theta = 0;
ros::Time current;

const double covariance[36] = { 0.01, 0, 0, 0, 0, 0,
                                   0, 0.01, 0, 0, 0, 0,
                                   0, 0, 99999, 0, 0, 0,
                                   0, 0, 0, 0.174532925, 0, 0,
                                   0, 0, 0, 0, 9999, 0,
                                   0, 0, 0, 0, 0, 99999};

const double B = 0.1577;  //Axis
const double M = 0.033;   //Wheel radius

//Callback Function for JointState
void callbackJoint(sensor_msgs::JointStateConstPtr pJoint) {
    static bool firstticks = true;
    current = pJoint->header.stamp;
    if(firstticks) {
      x = 0;
      y = 0;
      theta = 0;
      firstticks = false;
      dro = pJoint->position[0];
      dlo = pJoint->position[1];

    } else{
      //arclength = r*theta(in rad)
      double dr = (pJoint->position[0] - dro) * M;
      double dl = (pJoint->position[1] - dlo) * M;

      float meanDistance = (dr + dl) / 2;
      float deltaTheta = (dr - dl) / B;

      float dx = meanDistance * std::cos(theta + deltaTheta/2);
      float dy = meanDistance * std::sin(theta + deltaTheta/2);

      // Update odometry
      x += dx;
      y += dy;
      theta += deltaTheta;

      if(theta > 2 * M_PI){
        theta -= 2 * M_PI;
      }

      if(theta < 0){
        theta += 2* M_PI;
      }

      dro = pJoint->position[0];
      dlo = pJoint->position[1];
    }
}

int main(int argc, char* argv[]){

  ros::init(argc, argv, "MyOdometry");
  ros::NodeHandle n;
  current = ros::Time::now();
  // Communication 
  ros::Publisher publisher = n.advertise<nav_msgs::Odometry>("myodom", 100);
  ros::Subscriber jointSub = n.subscribe("/joint_states", 1, &callbackJoint);

  //Publish Odometry
  while(ros::ok()) {
    //update frequency
    ros::Rate r(10);
     
    // message frames
    nav_msgs::Odometry odom;
    odom.header.stamp = current; 
    odom.header.frame_id = "odom_combined";
    odom.child_frame_id = "base_link";

    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(theta);

    odom.pose.pose.position.x = x;
    odom.pose.pose.position.y = y;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;
  
    for (int i = 0; i < 36; i++)
      odom.pose.covariance[i] = covariance[i];
    //TODO set the velocity
    odom.twist.twist.linear.x = 0;
    odom.twist.twist.linear.y = 0;
    odom.twist.twist.linear.z = 0;
    odom.twist.twist.angular.x = 0;
    odom.twist.twist.angular.y = 0;
    odom.twist.twist.angular.z = 0;
    for (int i = 0; i < 36; i++)
      odom.twist.covariance[i] = covariance[i];
    publisher.publish(odom);
    
    r.sleep();
    ros::spinOnce();
  }

}
