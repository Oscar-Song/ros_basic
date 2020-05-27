#! /usr/bin/env python

import rospy
import actionlib

from std_srvs.srv import Trigger, TriggerRequest
from common_dir.move_publisher import CmdVelPub
from common_dir.enums import Direction
from my_turtlebot_actions.msg import record_odomAction, record_odomActionGoal

PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4


class TurtleBot(object):
    def __init__(self):
        #define the clients to call the action and service servers
        #define cmdvel publisher
        self._cmd_vel_pub = CmdVelPub()
        self._init_action_client()
        self._init_service_client()
        self._rate = rospy.Rate(1)
        
    def _init_action_client(self, action_name='/rec_odom_as'):
        self._action_client = actionlib.SimpleActionClient(action_name, record_odomAction)
        self._action_goal = record_odomActionGoal()
        self._action_client.wait_for_server()

    def _init_service_client(self, service_name='/move_turtlebot'):
        rospy.wait_for_service(service_name)
        self._service_client = rospy.ServiceProxy(service_name, Trigger)
        self._service_request = TriggerRequest()
        
    
    def _convert_direction(self, direction_str):
        if direction_str == "Direction.forward":
            return Direction.forward
        elif direction_str == "Direction.left":
            return Direction.left 
        elif direction_str == "Direction.right":
            return Direction.right 
        elif direction_str == "Direction.stop":
            return Direction.stop 
        else:
            rospy.logerr("Wrong message for direction received: no such direction available")
            return Direction.stop

    def _send_command(self, dir):
        #rospy.loginfo("send move command: "+str(dir))
        self._cmd_vel_pub.move(dir)
    
    def _rec_odom_finished(self):
        self._state = self._action_client.get_state()
        return self._state >= DONE
    
    def _check_warn_or_err(self):
        if self._state is WARN:
            rospy.logwarn("A Warning has occured on the server side")
        elif self._state is ERROR:
            rospy.logerr("An Error has occurred on the server side")

    def move_out_maze(self):
        #1: define necessary vars
        success = True 

        #2: send off the action task
        self._action_client.send_goal(self._action_goal)
        rospy.loginfo("Action Server is now processing the Odometry of the bot") 

        #3: while waiting for action result, use service to publish appropriate commands to cmdvel
        #   use helper methods when necessary
        while not self._rec_odom_finished():
            result = self._service_client(self._service_request)
            rospy.loginfo(result)
            self._send_command(self._convert_direction(result.message))
            self._rate.sleep()
        self._send_command(Direction.stop)

        #4: handle cases when state >= Done and when ctrl_c is pressed
        self._check_warn_or_err()
        
        #5: print result
        odom_record = self._action_client.get_result()
        #print odom_record

    

if __name__ == "__main__":
    rospy.init_node("move_turtlebot_main_node")
    turtlebot = TurtleBot()
    try:
        turtlebot.move_out_maze()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS program is being forcefully shutdown")
    except Exception as err:
        rospy.logerr("Other error occurred") 
        rospy.logerr(str(err))
        

