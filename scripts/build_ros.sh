echo "Building ROS nodes"

# cd Examples/ROS/orb_slam3
# mkdir build
# cd build
# cmake .. -DROS_BUILD_TYPE=Release
# make -j

cd Examples/ROS
catkin_make --source orb_slam3