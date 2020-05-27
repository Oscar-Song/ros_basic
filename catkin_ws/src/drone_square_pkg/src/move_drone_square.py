#! /usr/bin/env python

import rospy
import time
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

class MoveDroneSquare:
    def __init__(self):
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=4)
        self.takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self.landing_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
        self.rate = rospy.Rate(1)
        self.my_move = Twist()
    
    def move(self, timing, linear, angular):
        self.my_move.linear.x = linear
        self.my_move.angular.z = angular
        self.pub.publish(self.my_move)
        
        time.sleep(timing)
        self.stop()
    
    def stop(self):
        self.my_move.linear.x = 0.0
        self.my_move.linear.y = 0.0
        self.my_move.linear.z = 0.0
        self.my_move.angular.z = 0.0
        self.pub.publish(self.my_move)
        self.rate.sleep()

    def move_square_side(self, side=2.0):
        self.move(side, -0.2, 0.0)
        self.move(4.0, 0.0, 0.0)
        self.move(3.5, 0.0, -0.5)
        self.move(0.5, 0.0, 0.0)
        rospy.loginfo("Drone has moved one side")
    def takeoff(self):
        takeoff_msg = Empty()
        for i in range(5):
            rospy.loginfo("Drone is taking off")
            self.takeoff_pub.publish(takeoff_msg)
            time.sleep(1)
    
    def landing(self):
        landing_msg = Empty()
        for i in range(5):
            rospy.loginfo("Drone is landing")
            self.landing_pub.publish(landing_msg)
            time.sleep(1)
