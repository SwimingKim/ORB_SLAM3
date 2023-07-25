#include <iostream>
#include <ros/ros.h>
#include <sensor_msgs/Image.h>
#include <opencv2/opencv.hpp>

void imageCallback(const sensor_msgs::Image& msg);

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Main");
    ros::start();

    ros::NodeHandle nodeHandler;
    ros::Subscriber sub = nodeHandler.subscribe("/usb_cam/image_raw", 1, imageCallback);

    std::cout << "Hello ROS C++" << std::endl;

    ros::spin();
}

void imageCallback(const sensor_msgs::Image& msg)
{
    cv::Mat src = cv::Mat(msg.height, msg.width, CV_8UC3, const_cast<uint8_t*>(&msg.data[0]), msg.step);
    cv::cvtColor(src, src, cv::COLOR_RGB2BGR);
    cv::imshow("image", src);
    cv::waitKey(1);
}
