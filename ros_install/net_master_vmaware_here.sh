
source /opt/ros/melodic/setup.bash


. /home/pzx/pzx_git/third/ros/pzx_second_ros/devel/setup.bash
export ROS_PACKAGE_PATH=/home/pzx/pzx_git/third/ros/pzx_second_ros/src:$ROS_PACKAGE_PATH

. /home/pzx/pzx_git/third/ros/pzx_first_ros/devel/setup.bash
export ROS_PACKAGE_PATH=/home/pzx/pzx_git/third/ros/pzx_first_ros/src:$ROS_PACKAGE_PATH

. /home/pzx/pzx_git/third/ros/pzx_third_ros/devel/setup.bash
export ROS_PACKAGE_PATH=/home/pzx/pzx_git/third/ros/pzx_third_ros/src:$ROS_PACKAGE_PATH

#. /home/pzx/linuxcnc-master/scripts/rip-environment


export ROS_MASTER_URI=http://192.168.142.130:11311
export ROS_HOSTNAME=192.168.142.130
export ROS_IP=192.168.142.130
