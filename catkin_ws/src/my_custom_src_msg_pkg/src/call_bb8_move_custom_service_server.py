#! /usr/bin/env python

import rospy
# Import the service message used by the service /trajectory_by_name
from my_custom_src_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageRequest

rospy.init_node('move_bb8_in_circle_custom_service_client')
rospy.wait_for_service('/move_bb8_in_circle_custom')
# Create the connection to the service
move_bb8_custom_service_client = rospy.ServiceProxy('/move_bb8_in_circle_custom', MyCustomServiceMessage)
move_bb8_custom_request_object = MyCustomServiceMessageRequest()

move_bb8_custom_request_object.duration = 5
# Send through the connection the name of the trajectory to be executed by the robot
result = move_bb8_custom_service_client(move_bb8_custom_request_object)
# Print the result given by the service called
print result