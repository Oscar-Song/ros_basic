#! /usr/bin/env python

import rospy
from my_custom_src_msg_pkg.srv import CustomDurationMessage, CustomDurationMessageResponse
from bb8_move_circle_class import MoveBB8
import time

def my_callback(request):
    rospy.loginfo("The Service move_bb8_in_circle has been called")
    movebb8_object = MoveBB8()
    for i in range(request.duration):
        movebb8_object.move_bb8()
        time.sleep(1)
    movebb8_object.stop_bb8()
    rospy.loginfo("Finished service move_bb8_in_circle")
    return CustomDurationMessageResponse()

rospy.init_node('service_move_bb8_in_circle_server') 
my_service = rospy.Service('/move_bb8_in_circle', CustomDurationMessage , my_callback)
rospy.loginfo("Service /move_bb8_in_circle Ready")
rospy.spin() # mantain the service open