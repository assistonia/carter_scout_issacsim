from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription, GroupAction
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import PathJoinSubstitution
from launch_ros.substitutions import FindPackageShare
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import SetRemap

def generate_launch_description():
    # 런치 파일 인자 선언
    map_yaml_file = LaunchConfiguration('map')
    use_sim_time = LaunchConfiguration('use_sim_time')
    
    declare_map_yaml_cmd = DeclareLaunchArgument(
        'map',
        default_value='/path/to/your/map.yaml',
        description='Full path to map yaml file to load')
        
    declare_use_sim_time_cmd = DeclareLaunchArgument(
        'use_sim_time',
        default_value='false',
        description='Use simulation (Gazebo) clock if true')

    # 공통 리매핑 설정
    remappings = GroupAction([
        SetRemap('scan', '/scoutv2/lidar2d'),
        SetRemap('odom', '/scoutv2/odom'),
    ])

    # Nav2 실행
    nav2_launch = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([
            PathJoinSubstitution([
                FindPackageShare('scout2_navigation'),
                'launch',
                'nav2.launch.py'
            ])
        ]),
        launch_arguments={
            'use_sim_time': use_sim_time,
            'params_file': PathJoinSubstitution([
                FindPackageShare('scout2_navigation'),
                'config',
                'nav2.yaml'
            ])
        }.items()
    )

    # AMCL 실행
    amcl_launch = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([
            PathJoinSubstitution([
                FindPackageShare('nav2_bringup'),
                'launch',
                'localization_launch.py'
            ])
        ]),
        launch_arguments={
            'map': map_yaml_file,
            'use_sim_time': use_sim_time
        }.items()
    )

    ld = LaunchDescription()
    ld.add_action(declare_map_yaml_cmd)
    ld.add_action(declare_use_sim_time_cmd)
    ld.add_action(remappings)
    ld.add_action(amcl_launch)
    ld.add_action(nav2_launch)

    return ld 