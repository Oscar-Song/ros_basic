#! /usr/bin/env python

import rospy
import time
import actionlib

from my_turtlebot_actions.msg import record_odomAction, record_odomResult
from common_dir.odom_reader import OdomReader 
from common_dir.odom_analysis import OdomAnalysis

class RecordOdomActionServer(object):
    def __init__(self, goal_dist=9, action_server_name='/rec_odom_as', time_limit=120):
        self._action_server = actionlib.SimpleActionServer(action_server_name, record_odomAction, self._cb, False)
        self._result = record_odomResult()
        self._odom_reader = OdomReader()
        self._odom_analyzer = OdomAnalysis()
        self._time_limit = time_limit
        self._goal_dist = goal_dist
        rospy.loginfo("Action server to calculate Odometry is launched")
        self._action_server.start()

    def _cb(self, goal):
        rate = rospy.Rate(1)
        success = True

        timer = 0
        for i in range(self._time_limit):
            #end the program gracefully if action server is preempted
            if self._action_server.is_preempt_requested():
                success = False
                rospy.logwarn("Action server is preempted")
                self._action_server.set_preempted()
                break 
            else:
                #check distance
                if not self._is_dist_reached():
                    new_odom = self._odom_reader.get_odom()
                    self._result.result_odom_array.append(new_odom)     
                else:
                    rospy.loginfo("Turtlebot has exited the maze")
                    break
            rate.sleep()
            timer = i

        if timer == self._time_limit:
            rospy.loginfo("Action server timed out")
        if success:
            
            self._action_server.set_succeeded(self._result)
            self._reset_action_server()
            

    def _is_dist_reached(self):
        return self._odom_analyzer.check_dist_reached(self._goal_dist, self._result.result_odom_array)

    def _reset_action_server(self):
        self._result = record_odomResult()

if __name__ == "__main__":
    rospy.init_node("record_odom_action_server_node")
    RecordOdomActionServer()
    rospy.spin()
    

