#include "ros/ros.h"
#include "my_package/RVL.h"
#include "my_package/srv1.h"
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
	my_package::RVL msg2;
	msg2.ID = 99;
	msg2.Name = "Pippo";
	msg2.Level = 19;
	res.robotMessage = msg2;
	ROS_INFO("The following chargin station %d requested the info", req.ID);
	ROS_INFO("Request header %d, %d, %s", req.msg.seq, req.msg.stamp, req.msg.frame_id.c_str());
	return true;
}
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
	ros::init(argc, argv, "Robot_doing_things");
	ros::NodeHandle n;
	ros::Rate loop_rate(5);
	my_package::RVL robotMsg;
	ros::ServiceServer service = n.advertiseService("request_robot_info", info);
	ROS_INFO("Ready to give informations");
	ros::spin();
    return 0;
}

