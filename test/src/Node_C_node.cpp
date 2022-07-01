//
// Created by syk on 2022/3/28.
//
#include "Node_C.h"

using namespace std;
using namespace ros;
bool finish_flag;
std::string grayIm_path;
std::stringstream threshIm_path;
cv::Mat grayImage,threshImage;

//回调函数
void grayImageCallBack(const std_msgs::String::ConstPtr& path)
{
    grayIm_path = path->data.c_str();
    //读取图片
    grayImage = cv::imread(grayIm_path.c_str());
    ROS_INFO("灰度图路径: %s",grayIm_path.c_str());            // *  C输出格式  *
    //std::cout << "灰度图路径" << grayIm_path << endl;       // * C++输出格式 *
}

void threshImageCallBack(const std_msgs::String::ConstPtr& path)
{
    threshIm_path.clear();threshIm_path.str("");
    threshIm_path << path->data.c_str();
    threshImage = cv::imread(threshIm_path.str().c_str());
    ROS_INFO_STREAM("二值图路径: " << threshIm_path.str());
}

void finishFlagCallBack(const std_msgs::Bool::ConstPtr& finishFlag)
{
    if(finishFlag->data)
        finish_flag = true;
    ROS_INFO_ONCE("Finish flag received");
}

int main(int agrc,char **agrv)
{
    //初始化“Node_C”节点
    ros::init(agrc,agrv,"Node_C_node");
    ros::NodeHandle n;
    //订阅路径
    ros::Subscriber grayIm_path_sub = n.subscribe("gray_image_path",5,grayImageCallBack);
    ros::Subscriber threshIm_path_sub = n.subscribe("threshold_image_path",5,threshImageCallBack);
    ros::Subscriber finishFlag_sub = n.subscribe("finish_flag",10,finishFlagCallBack);
    //设置循环频率10hz
    ros::Rate loop_rate(10);
    //进入循环前标志位置否
    finish_flag = false;

    cv::namedWindow("Gray Image");
    cv::namedWindow("Threshold Image");

    while(ros::ok()) {
        if (finish_flag) {
            //关闭接收finishFlag的节点
            finishFlag_sub.shutdown();
            finish_flag = false;
        }
        //图像读取成功则显示
        if ((!grayImage.empty()) && (!threshImage.empty())) {
            cv::imshow("Gray Image", grayImage);
            cv::imshow("Threshold Image", threshImage);
            cv::waitKey(1);
        }
        //准备进入回调函数
        ros::spinOnce();
        //睡一会儿吧!
        loop_rate.sleep();
    }
}
