//
// Created by syk on 2022/3/28.
//

#include "Node_B.h"

using namespace std;
using namespace ros;
bool start_flag,flag;
#define GRAYIMAGE_PATH    "/home/syk/catkin_ws/src/test/grayImage.jpg"
#define THRESHIMAGE_PATH  "/home/syk/catkin_ws/src/test/threshImage.jpg"

//回调函数
void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{//-------！不可以在回调函数中创建窗口 ！------
    if(start_flag)
    {
        //ROS图像转OpenCV图像
        cv::Mat rawImage = cv_bridge::toCvShare(msg, "bgr8")->image;
        //转为灰度图
        cv::Mat grayImage;
        cvtColor(rawImage,grayImage,CV_BGR2GRAY);
        //二值化
        cv::Mat threshImage;
        cv::threshold(grayImage, threshImage, 125,255, cv::THRESH_BINARY_INV);
        //保存图片
        cv::imwrite(GRAYIMAGE_PATH,grayImage);
        cv::imwrite(THRESHIMAGE_PATH,threshImage);
        flag = true;
    }
    else
        ROS_INFO("Waiting for start flag");
}

void startFlagCallBack(const std_msgs::Bool::ConstPtr& startFlag)
{
    ROS_INFO("start flag received");
    if(startFlag->data)
        start_flag = true;
}

int main(int agrc,char **agrv){
    //初始化“Node_B”节点
    ros::init(agrc,agrv,"Node_B_node");
    ros::NodeHandle n;
    //订阅话题
    ros::Subscriber image_sub = n.subscribe("raw_image",10,imageCallback);
    ros::Subscriber start_flag_sub = n.subscribe("start_flag",10,startFlagCallBack);
    //发布路径话题
    ros::Publisher grayIm_path_pub = n.advertise<std_msgs::String>("gray_image_path",5);
    ros::Publisher thIm_path_pub = n.advertise<std_msgs::String>("threshold_image_path",5);
    ros::Publisher flag_publisher = n.advertise<std_msgs::Bool>("finish_flag",10);
    //节点运行频率设定为30hz
    ros::Rate loop_rate(30);
    //结束标志位
    std_msgs::Bool finishFlag;
    //进入循环前将标志位置否
    start_flag = flag = false;
    //保存路径以供发送
    std_msgs::String grayIm_path,thIm_path;
    grayIm_path.data = GRAYIMAGE_PATH;
    thIm_path.data = THRESHIMAGE_PATH;

    while(ros::ok())
    {
        //收到start_flag
        if(start_flag)
        {
            grayIm_path_pub.publish(grayIm_path);
            thIm_path_pub.publish(thIm_path);
            //发布结束标志位
            finishFlag.data = true;
            flag_publisher.publish(finishFlag);
        }
        if(flag)
            image_sub.shutdown();
        //等待进入回调函数
        ros::spinOnce();
        //睡一会儿吧！
        loop_rate.sleep();
    }
    return 0;
}