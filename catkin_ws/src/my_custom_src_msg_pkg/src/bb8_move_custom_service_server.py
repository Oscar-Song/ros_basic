#! /usr/bin/env python

import rospy
from my_custom_src_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse
from geometry_msgs.msg import Twist

def my_callback(request):
    print "Request Data==> duration="+str(request.duration)
    my_response = MyCustomServiceMessageResponse()
    move_circle.linear.x = 0.2
    move_circle.angular.z = 0.2
    i = 0
    try:
        while i < request.duration:
            my_pub.publish(move_circle)
            rate.sleep()
            i += 1
        move_circle.linear.x = 0
        move_circle.angular.z = 0
        my_pub.publish(move_circle)
        my_response.success = True
    except:
        my_response.success = False
    
    rospy.loginfo('Finished service move bb8 in circle') 
    return my_response

rospy.init_node('move_bb8_in_circle_custom_service_server') 
my_service = rospy.Service('/move_bb8_in_circle_custom', MyCustomServiceMessage, my_callback) # create the Service called my_service with the defined callback
my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
move_circle = Twist()
rate = rospy.Rate(1)
rospy.loginfo('Started service move bb8 in custom circle')
rospy.spin() # maintain the service open.