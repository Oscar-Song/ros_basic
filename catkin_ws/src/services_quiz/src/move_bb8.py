#! /usr/bin/env python

import rospy
import time
from geometry_msgs.msg import Twist

class MoveBB8:
    def __init__(self):
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.rate = rospy.Rate(2)
    
    def move(self, timing, linear, angular):
        my_move = Twist()
        my_move.linear.x = linear
        my_move.angular.z = angular
        self.pub.publish(my_move)
        
        time.sleep(timing)
        self.stop(my_move)
    
    def stop(self, my_move):
        my_move.linear.x = 0.0
        my_move.linear.y = 0.0
        my_move.linear.z = 0.0
        my_move.angular.z = 0.0
        self.pub.publish(my_move)
        self.rate.sleep()
    def move_square(self, side=2.0):
        for i in range(4):
            self.move(side, -0.2, 0.0)
            self.move(4.0, 0.0, 0.0)
            self.move(3.5, 0.0, -0.2)
            self.move(0.5, 0.0, 0.0)
        
