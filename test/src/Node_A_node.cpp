//
// Created by syk on 2022/3/28.
//

#include "Node_A.h"

using namespace std;
using namespace ros;

int main(int agrc,char **agrv)
{
    //初始化“Node_A”节点
    ros::init(agrc,agrv,"Node_A_node");
    ros::NodeHandle n;
    //用之前声明的节点句柄初始化it，其实这里的it和nh的功能基本一样，可以像之前一样使用it来发布和订阅相消息
    image_transport::ImageTransport it(n);
    image_transport::Publisher image_publisher = it.advertise("raw_image", 10);
    //节点运行频率设定为30hz
    ros::Rate loop_rate(30);
    //定义图像文件
    cv::Mat rawImage;
    //打开摄像头
    cv::VideoCapture cameraVideo(0);
    //摄像头异常情况处理
    if (!cameraVideo.isOpened())
    {
        ROS_ERROR("fail to open camera");
        return -1;
    }

    while(ros::ok())
    {
        cameraVideo >> rawImage;
        //OpenCV图像格式转换ROS中图像格式
        sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", rawImage).toImageMsg();
        //发布图像话题
        image_publisher.publish(msg);
        //睡一会儿来满足执行频率
        loop_rate.sleep();
    }
    return 0;
}
