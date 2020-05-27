#! /usr/bin/env python

import rospy
from move_bb8 import MoveBB8
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse
from geometry_msgs.msg import Twist

def my_callback(request):
    print "Request Data==> side="+str(request.side)+", repetitions="+str(request.repetitions)
    my_response = BB8CustomServiceMessageResponse()
    move_square = MoveBB8()
    try:
        for i in range(request.repetitions):
            move_square.move_square(request.side)
        my_response.success = True
    except Exception as e:
        print e.message
        my_response.success = False
    rospy.loginfo('Finished service move bb8 in square') 
    return my_response

rospy.init_node('move_bb8_in_square_custom_service_server') 
my_service = rospy.Service('/move_bb8_in_square_custom', BB8CustomServiceMessage, my_callback) 
my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=4)
move_square = Twist()
rate = rospy.Rate(2)
rospy.loginfo('Started service move bb8 in custom square')
rospy.spin() # maintain the service open.