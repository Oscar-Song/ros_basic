#! /usr/bin/env python

import rospy
import time
import actionlib

from my_sphero_actions.msg import record_odomAction, record_odomResult
from nav_msgs.msg import Odometry
from odom_subscriber import OdomSubscriber
from odom_analysis import OdomAnalysis

class OdomActionServer(object):

    def __init__(self, goal_distance):
        self._action_server = actionlib.SimpleActionServer("/calc_odom", record_odomAction, self._cb, False)
        self._result = record_odomResult()
        self._odom_sub = OdomSubscriber()
        self._odom_analysis = OdomAnalysis()
        rospy.loginfo("Launched Odom Action Server")
        self._time_limit = 120
        self._goal_distance = goal_distance
        self._action_server.start()
        

    def _cb(self, goal):
        rate = rospy.Rate(1)
        success = True
        
        for i in range(self._time_limit):
            rospy.loginfo("Recording odometry")
            if self._action_server.is_preempt_requested():
                rospy.logdebug("Action Server preempted")
                success = False
                self._action_server.set_preempted()
                break
            else:
                #not reached desired distance
                if not self._reached_dist_goal():
                    rospy.logdebug("Reading new odometry")
                    self._result.result_odom_array.append(self._odom_sub.get_odom())
                else:
                    rospy.logwarn("Distance reached")
                    break
            rate.sleep()

        #some reset mechanism TODO
        
        if success:
            rospy.loginfo("Successfully moved sphero out of the maze")
            self._action_server.set_succeeded(self._result)
        
        self._clean_result()

    def _reached_dist_goal(self):

        return self._odom_analysis.check_dist_reached(self._goal_distance, self._result.result_odom_array)
        
    def _clean_result(self):
        self._result = record_odomResult()
                
if __name__ == "__main__":
    rospy.init_node("record_odom_action_server_node")
    OdomActionServer(goal_distance=2.0)
    rospy.spin()
        
            
