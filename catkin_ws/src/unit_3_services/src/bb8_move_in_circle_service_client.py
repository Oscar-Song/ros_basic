#! /usr/bin/env python

import rospy
# Import the service message used by the service /trajectory_by_name
from std_srvs.srv import Empty, EmptyRequest # you import the service message python classes generated from Empty.srv.

import rospkg

# Initialise a ROS node with the name service_execute_trajectory_client
rospy.init_node('move_bb8_service_client')
# Wait for the service client /execute_trajectory to be running
rospy.wait_for_service('/move_bb8_in_circle')
# Create the connection to the service
move_bb8_service_client = rospy.ServiceProxy('/move_bb8_in_circle', Empty)
move_bb8_request_object = EmptyRequest()

# Send through the connection the name of the trajectory to be executed by the robot
result = move_bb8_service_client(move_bb8_request_object)
# Print the result given by the service called
print result