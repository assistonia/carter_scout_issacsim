# CMake generated Testfile for 
# Source directory: /home/hmi/Desktop/humble_ws/src/isaac_ros2_messages
# Build directory: /home/hmi/Desktop/humble_ws/build/isaac_ros2_messages
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/test_results/isaac_ros2_messages/copyright.xunit.xml" "--package-name" "isaac_ros2_messages" "--output-file" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/ament_copyright/copyright.txt" "--command" "/opt/ros/humble/bin/ament_copyright" "--xunit-file" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/test_results/isaac_ros2_messages/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "200" WORKING_DIRECTORY "/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_copyright/cmake/ament_copyright.cmake;51;ament_add_test;/opt/ros/humble/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;22;ament_copyright;/opt/ros/humble/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages/CMakeLists.txt;57;ament_package;/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/test_results/isaac_ros2_messages/lint_cmake.xunit.xml" "--package-name" "isaac_ros2_messages" "--output-file" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/humble/bin/ament_lint_cmake" "--xunit-file" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/test_results/isaac_ros2_messages/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;47;ament_add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages/CMakeLists.txt;57;ament_package;/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/test_results/isaac_ros2_messages/xmllint.xunit.xml" "--package-name" "isaac_ros2_messages" "--output-file" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/ament_xmllint/xmllint.txt" "--command" "/opt/ros/humble/bin/ament_xmllint" "--xunit-file" "/home/hmi/Desktop/humble_ws/build/isaac_ros2_messages/test_results/isaac_ros2_messages/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages/CMakeLists.txt;57;ament_package;/home/hmi/Desktop/humble_ws/src/isaac_ros2_messages/CMakeLists.txt;0;")
subdirs("isaac_ros2_messages__py")
