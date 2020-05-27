#! /usr/bin/env python

import rospy
import actionlib
from my_turtlebot_actions.msg import record_odomAction, record_odomGoal

rospy.init_node("rec_odom_action_client_node")
rate = rospy.Rate(1)
#1: define states of the action call
PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4

#2: define actionClient, and then wait the server to be ready
client = actionlib.SimpleActionClient('/rec_odom_as', record_odomAction)
rospy.loginfo("action client launched")
client.wait_for_server()

#3: define the goal, and then send the goal into the client
goal = record_odomGoal()
client.send_goal(goal)
rospy.loginfo("goal sent")

#4: while state is not DONE, login
state = client.get_state()
while state < DONE:
    rospy.loginfo("Turtlebot has yet to exit the maze")
    rate.sleep()
    state = client.get_state()

#5: if the state is WARNING or ERROR, print the respective messages
if state is WARN:
    rospy.logwarn("Warning occured on the server side")
if state is ERROR:
    rospy.logerr("Error occurred on the server side")

#6 print the result
result = client.get_result()
print "Result: "+str(result) 