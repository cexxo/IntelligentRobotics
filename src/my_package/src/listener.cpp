#include "ros/ros.h"
#include "my_package/RVL.h"
#include "my_package/srv1.h"
#include "actionlib/client/simple_action_client.h"
#include "actionlib/client/terminal_state.h"
#include "my_package/my_actionAction.h"
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
	/*ros::init(argc,argv, "request_info");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("message",1000,messageCallback);
	my_package::srv1 srv;
	srv.request.ID = atoll(argv[1]);
	double rate = srv.request.ID + 2;
	rate = rate/50;
	ros::Rate loop_rate(rate);
	while(ros::ok()){
		loop_rate.sleep();
		ros::ServiceClient client = n.serviceClient<my_package::srv1>("request_robot_info");
		if (client.call(srv)){
			ROS_INFO("id is: %d", srv.response.robotMessage.ID);
			ROS_INFO("Name is: %s", srv.response.robotMessage.Name.c_str());
			ROS_INFO("Battery level is: %d", srv.response.robotMessage.Level);
		}
		else{
			ROS_ERROR("Something went wrong, try to launch the robot first");
		}
		ros::spinOnce();
		//loop_rate.sleep();
	}*/
	//Excercise 3 Lab 5
	ros::init(argc,argv,"listener");
	actionlib::SimpleActionClient<my_package::my_actionAction> ac("my_action",true);
	ROS_INFO("Waiting for action server to start");
	ac.waitForServer();
	ROS_INFO("Action server started,sending goal.");
	my_package::my_actionGoal goal;
	goal.maximumCharge = 80;
	ac.sendGoal(goal);
	bool finished_before_timeout = ac.waitForResult(ros::Duration(30.0));
	if(finished_before_timeout){
		actionlib::SimpleClientGoalState state = ac.getState();
		ROS_INFO("Action finished: %s",state.toString().c_str());
	}
	else{
		ROS_INFO("Action did not finish before the time out.");
	}
	//ros::spin();
	return 0;
}
