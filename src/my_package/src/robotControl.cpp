#include "ros/ros.h"
#include "my_package/RVL.h"
#include "my_package/srv1.h"
#include "actionlib/server/simple_action_server.h"
#include "my_package/my_actionAction.h"
#include <sstream>
#include<string>
#include<iostream>
#include<cstdlib>
/*bool info(my_package::srv1::Request &req, my_package::srv1::Response &res){
  res.msg2 = req.msg;
  res.robot_info = req.RVL;
  ROS_INFO("ID: %d , Name: %s , Battery: %d", res.RVL->ID, res.RVL->Name.c_str(), res.RVL->Level);
  return true;
  }*/
bool info(my_package::srv1::Request & req, my_package::srv1::Response &res){
	res.msg2 = req.msg;
	std::string names[] = {"RVL","IAS","CEC","BOD","ADT"};
	my_package::RVL msg2;
	msg2.ID = req.ID;
	msg2.Name = names[rand()%5];
	msg2.Level = rand()%100+1;
	res.robotMessage = msg2;
	ROS_INFO("The following charging station %d requested the info", req.ID);
	//ROS_INFO("Request header %d, %s", req.msg.seq, req.msg.frame_id.c_str());
	return true;
}

class my_actionAction{
	protected:
		ros::NodeHandle nh_;
		actionlib::SimpleActionServer<my_package::my_actionAction> as_;
		std::string action_name_;
		my_package::my_actionFeedback feedback_;
		my_package::my_actionResult result_;

	public:
		my_actionAction(std::string name) : as_(nh_,name,boost::bind(&my_actionAction::executeCB,this,_1),false),action_name_(name){
		as_.start();
	}

	void executeCB(const my_package::my_actionGoalConstPtr &goal){
		ros::Rate r(1);//1 message per second, i guess
		bool success = true;
		feedback_.currentCharge = 0;
		for(int i=0;feedback_.currentCharge<=goal->maximumCharge;i++){
			if(as_.isPreemptRequested() || !ros::ok()){
				ROS_INFO("%s: Preempted",action_name_.c_str());
				as_.setPreempted();
				success = false;
			}
			as_.publishFeedback(feedback_);
			feedback_.currentCharge += 5;
			//ROS_INFO("charging level: %d, maximum charge available: %d", feedback_.currentCharge, goal->maximumCharge);
			r.sleep();
		}
		if(success){
			result_.goal_reached = true;
			ROS_INFO("%s, succedeed",action_name_.c_str());
			as_.setSucceeded(result_);
		}
	}
	~my_actionAction(void){}
};

int main(int argc, char **argv){
	//Excersice 1 Lab 3
	/*int ids[] = {1,2,3,4,5};
	  ros::init(argc, argv, "robotControl");
	  ros::NodeHandle n;
	  ros::Publisher pub =
	  n.advertise<my_package::RVL>("message",
	  1000);
	  ros::Rate loop_rate(5);
	  int i = 0;
	  int battery_level = 100;
	  int counter = 0;
	  int lastStation = 0;
	  std::string names[] = {"RVL","SSL","NL","IASL","ARL","Charge Station"};
	  while (ros::ok()){
	  if(counter%10 == 0 && counter > 0)
	  i++;
	  if (i == 5)
	  break;
	  if (battery_level == 0)
	  break;
	  my_package::RVL msg;
	  if (battery_level <= 20){
	  lastStation = i;
	  while(battery_level < 100){
	  i = 5;
	  battery_level+=5;
	  msg.ID = 0;
	  msg.Name = names[i];
	  msg.Level = battery_level;
	  pub.publish(msg);
	  ros::spinOnce();
	  loop_rate.sleep();
	  }
	  i = lastStation;
	  }
	  else{
	  msg.ID = ids[i];
	  msg.Name = names[i];
	  msg.Level = battery_level;
	  pub.publish(msg);
	  ros::spinOnce();
	  loop_rate.sleep();
	  battery_level-=10;
	  counter++;
	  }
	  }*/
	//Excercise 2 Lab 4
	/*ros::init(argc, argv, "Robot_doing_things");
	ros::NodeHandle n;
	my_package::RVL robotMsg;
	ros::ServiceServer service = n.advertiseService("request_robot_info", info);
	ROS_INFO("Ready to give informations");
	ros::spin();*/
	//Excercise 3 Lab 5
	ros::init(argc, argv, "Robot_doing_things");
	my_actionAction my_action("my_action");
	//Gonna create the class for the action
	ros::spin();
	return 0;
}

