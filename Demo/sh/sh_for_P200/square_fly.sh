##激光雷达自主飞行脚本
gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch mavros px4.launch fcu_url:="/dev/ttyTHS2:921600"; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch prometheus_control px4_pos_estimator.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch prometheus_control px4_pos_controller.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch prometheus_control tfmini.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch rplidar_ros rplidar.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch cartographer_ros rplidar.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch prometheus_control square.launch; exec bash"' \
