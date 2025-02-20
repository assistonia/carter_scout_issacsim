
```markdown
# ROS 2 Humble 네비게이션 실행 가이드

## 1. 필요한 패키지 설치
```

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
└── humble_ws  (이 위치에서 실행)
```

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

---
