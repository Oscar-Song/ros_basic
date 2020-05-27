#! /usr/bin/env python

import rospy
import time
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

class DroneMover:
    def __init__(self):
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=4)
        self.takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self.landing_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
        self.rate = rospy.Rate(1)
        self.my_move = Twist()
    
    def stop(self):
        self.my_move.linear.x = 0.0
        self.my_move.linear.y = 0.0
        self.my_move.linear.z = 0.0
        self.my_move.angular.z = 0.0
        self.pub.publish(self.my_move)
        self.rate.sleep()

    def takeoff(self):
        takeoff_msg = Empty()
        for i in range(5):
            rospy.loginfo("Drone is taking off")
            self.takeoff_pub.publish(takeoff_msg)
            time.sleep(1)
        self.stop()
    
    def landing(self):
        landing_msg = Empty()
        for i in range(5):
            rospy.loginfo("Drone is landing")
            self.landing_pub.publish(landing_msg)
            time.sleep(1)
        self.stop()
