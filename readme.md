#컴퓨터 환경
ubuntu 22.04
issac sim 4.2.0
ros2 humble

#필요 설치 패키지
sudo apt update
sudo apt install ros-humble-turtlebot4-navigation
sudo apt install ros-humble-navigation2
sudo apt install ros-humble-nav2-bringup 
sudo apt install ros-humble-pointcloud-to-laserscan
sudo apt install ros-humble-slam-toolbox
sudo apt install ros-humble-robot-localization
sudo apt install ros-humble-amcl

#주의점
아래 실행시킬때

(user name)을 컴퓨터의 계정 이름으로 바꿔주세요

#1.카터 네비게이션 실행
#실행 폴더위치
Download
ㄴ issac sim
ㄴ humble_ws (이위치 실행)


source /opt/ros/humble/setup.bash
source install/local_setup.bash
export FASTRTPS_DEFAULT_PROFILES_FILE=fastdds.xml

cd /home/(user name)/Downloads/issacsim
./isaac-sim.sh

#카터
source /opt/ros/humble/setup.bash
source install/local_setup.bash
export FASTRTPS_DEFAULT_PROFILES_FILE=fastdds.xml
ros2 launch carter_navigation issac_carter_navigation.launch.py


#2. 스카웃 네비게이션 실행

# 3. Static Transform 실행
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 run tf2_ros static_transform_publisher 0 0 0 0 0 0 map odom

# 4. 네비게이션 실행
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch scout2_navigation navigation.launch.py map:=/home/(user name)/Downloads/humble_ws/src/scout2_navigation/maps/5fimage.yaml

# 5. RViz2 실행
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 run rviz2 rviz2 -d $(ros2 pkg prefix nav2_bringup)/share/nav2_bringup/rviz/nav2_default_view.rviz
