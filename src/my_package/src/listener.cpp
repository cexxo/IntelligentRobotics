#include "ros/ros.h"
#include "my_package/RVL.h"
#include "my_package/srv1.h"
void messageCallback(const
my_package::RVL::ConstPtr& msg)
{
    ROS_INFO("I heard: [%d] [%s] [%d]", msg->ID,msg->Name.c_str(), msg->Level);
}
int main(int argc, char **argv)
{
	//Exercise 1 Lab 3
    /*ros::init(argc, argv, "listener");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("message", 1000, messageCallback);
    ros::spin();*/
	//Exercise 2 Lab 4
	ros::init(argc,argv, "request_info");
	/*if (argc != 3){
		ROS_INFO("usage: message and ID msg msg->ID");
		return 1;
	}*/
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("message",1000,messageCallback);
	ros::ServiceClient client = n.serviceClient<my_package::srv1>("request_robot_info");
	my_package::srv1 srv;
	int name =0;
	n.getParam("/listener/stationName", name);
	srv.request.ID = name;
	if (client.call(srv)){
		ROS_INFO("id is: %d", srv.response.robotMessage.ID);
		ROS_INFO("Name is: %s", srv.response.robotMessage.Name.c_str());
		ROS_INFO("Battery level is: %d", srv.response.robotMessage.Level);
	}
	else{
		ROS_ERROR("Something went wrong, try to launch the robot first");
	}
	ros::spin();
    return 0;
}
