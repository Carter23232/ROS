ROS Package: Turtlebot_Obstacle_Avoidance
Overview
This ROS package provides a comprehensive solution for obstacle avoidance using a Turtlebot in a simulated environment. It includes nodes for obstacle avoidance, odometry, and navigation, all written in C. The package is designed to work seamlessly with both TurtleSim and the Turtlebot hardware.

Prerequisites
ROS (Robot Operating System) installed on your system
Gazebo simulator for Turtlebot simulation
Turtlebot packages for ROS (if using hardware)
CMake
Catkin command line tools
Installation
Clone this repository into your ROS workspace's src directory:
bash
Copy code
git clone <repository_url>
Navigate to your ROS workspace and build the package:
bash
Copy code
cd <your_ros_workspace>
catkin build
Nodes
1. obstacle_avoidance_node
Description: This node utilizes sensor data to navigate the Turtlebot around obstacles in its environment.
Published Topics:
/cmd_vel: Velocity commands for controlling the Turtlebot's movement.
2. odometry_node
Description: This node provides odometry data for localization and mapping.
Subscribed Topics:
/odom: Odometry data from the Turtlebot.
Published Topics:
/odom_filtered: Filtered odometry data.
3. navigation_node
Description: This node facilitates navigation towards a specified goal.
Subscribed Topics:
/goal: Desired goal position for navigation.
Published Topics:
/cmd_vel: Velocity commands for controlling the Turtlebot's movement.
Usage
Launch the Turtlebot simulation in Gazebo:
bash
Copy code
roslaunch turtlebot_gazebo turtlebot_world.launch
Run the obstacle avoidance node:
bash
Copy code
rosrun Turtlebot_Obstacle_Avoidance obstacle_avoidance_node
Run the odometry node:
bash
Copy code
rosrun Turtlebot_Obstacle_Avoidance odometry_node
If using navigation, run the navigation node:
bash
Copy code
rosrun Turtlebot_Obstacle_Avoidance navigation_node
Notes
Ensure that appropriate sensor plugins are enabled in the Gazebo simulation for obstacle detection.
This package assumes the availability of proper sensor data and control interfaces according to the Turtlebot hardware specifications.
Contributors
Your Name - Initial development
License
This project is licensed under the MIT License - see the LICENSE file for details.
