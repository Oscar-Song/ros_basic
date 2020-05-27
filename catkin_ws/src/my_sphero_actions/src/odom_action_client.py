#! /usr/bin/env python

import rospy
import actionlib
from my_sphero_actions.msg import record_odomAction, record_odomGoal
from std_msgs.msg import Empty

PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4

class OdomActionClient(object):

    

    def __init__(self, server_name = "/calc_odom"):
        self._action_client = actionlib.SimpleActionClient(server_name, record_odomAction)
        rospy.loginfo("Launched Odom Action Client")
        self._action_client.wait_for_server()
        self._call_server()

    def _call_server(self):
        goal = record_odomGoal()
        self._action_client.send_goal(goal)
        rate = rospy.Rate(1)

        state = self._action_client.get_state()
        while state < DONE:
            rospy.loginfo("Waiting for server to return result")
            rate.sleep()
            state = self._action_client.get_state()
        
        rospy.loginfo("[Result] State: "+str(state))
        if state == 4:
            rospy.logerr("Something went wrong in the Server Side")
        if state == 3:
            rospy.logwarn("There is a warning in the Server Side")


        result = self._action_client.get_result()
        rospy.loginfo("Result: "+str(result))
        

if __name__ == "__main__":
    rospy.init_node("record_odom_action_client_node")
    OdomActionClient()
    