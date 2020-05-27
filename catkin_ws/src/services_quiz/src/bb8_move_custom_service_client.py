#! /usr/bin/env python

import rospy
import time
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageRequest

rospy.init_node('move_bb8_in_square_custom_service_client')
rospy.wait_for_service('/move_bb8_in_square_custom')
# Create the connection to the service
move_bb8_custom_service_client = rospy.ServiceProxy('/move_bb8_in_square_custom', BB8CustomServiceMessage)
move_bb8_custom_request_object = BB8CustomServiceMessageRequest()

move_bb8_custom_request_object.side = 4
move_bb8_custom_request_object.repetitions = 2 
# Send through the connection the name of the trajectory to be executed by the robot
result = move_bb8_custom_service_client(move_bb8_custom_request_object)
# Print the result given by the service called
print result

time.sleep(2)

move_bb8_custom_request_object.side = 8
move_bb8_custom_request_object.repetitions = 1
# Send through the connection the name of the trajectory to be executed by the robot
result = move_bb8_custom_service_client(move_bb8_custom_request_object)
# Print the result given by the service called
print result