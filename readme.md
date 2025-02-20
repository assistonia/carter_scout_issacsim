

# ROS 2 Humble 네비게이션 실행

```markdown
OS : Ubuntu 22.04
ROS : Humble
https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html

issac sim : 4.2.0
https://docs.isaacsim.omniverse.nvidia.com/4.5.0/installation/download.html


```
![아이삭심 버전설치](/image/image.png)



## 1. 필요한 패키지 설치


```bash
sudo apt update
sudo apt install ros-humble-turtlebot4-navigation
sudo apt install ros-humble-navigation2
sudo apt install ros-humble-nav2-bringup 
sudo apt install ros-humble-pointcloud-to-laserscan
sudo apt install ros-humble-slam-toolbox
sudo apt install ros-humble-robot-localization
sudo apt install ros-humble-amcl
```

---

## 2. 카터 네비게이션 실행

### 실행 폴더 위치
```
Downloads
├── issac sim
├── 5f_0919
└── humble_ws  (이 위치에서 실행)
```
### 아이삭 심에서 맵 불러오기 카터는 5f_0919, 스카웃은 5f_0909_scout
![맵 불러오기](/image/image1.png)

### 1) ROS 2 및 환경 변수 설정
```bash
source /opt/ros/humble/setup.bash
source install/local_setup.bash
export FASTRTPS_DEFAULT_PROFILES_FILE=fastdds.xml
```

### 2) Isaac Sim 실행
```bash
cd /home/(user name)/Downloads/issacsim
./isaac-sim.sh
```

### 3) 카터 네비게이션 실행
```bash
source /opt/ros/humble/setup.bash
source install/local_setup.bash
export FASTRTPS_DEFAULT_PROFILES_FILE=fastdds.xml
ros2 launch carter_navigation issac_carter_navigation.launch.py
```

---

## 3. 스카웃 네비게이션 실행

### 1) Static Transform 실행
```bash
source /opt/ros/humble/setup.bash
source install/setup.bash 
ros2 run tf2_ros static_transform_publisher 0 0 0 0 0 0 map odom
```

### 2) 네비게이션 실행
```bash
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch scout2_navigation navigation.launch.py map:=/home/(user name)/Downloads/scout_custom/src/scout2_navigation/maps/5fimage.yaml
```

### 3) RViz2 실행
```bash
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 run rviz2 rviz2 -d $(ros2 pkg prefix nav2_bringup)/share/nav2_bringup/rviz/nav2_default_view.rviz
```
```
## 워스스페이스 출처
```markdown
https://github.com/isaac-sim/IsaacSim-ros_workspaces

```