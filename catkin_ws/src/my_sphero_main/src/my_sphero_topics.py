#! /usr/bin/env python

import rospy
import time
from geometry_msgs.msg import Twist

class CmdVelPublisher:

    def __init__(self):
        self.pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
        self.movement = Twist()
        self.linear_speed = 0.2
        self.angular_speed = 0.5

    def move(self, direction):
        if direction == "forwards":
            self.movement.linear.x = self.linear_speed
            self.movement.angular.z = 0.0
        elif direction == "left":
            self.movement.linear.x = 0.0
            self.movement.angular.z = -self.angular_speed
        elif direction == "right":
            self.movement.linear.x = 0.0
            self.movement.angular.z = self.angular_speed
        elif direction == "backwards":
            self.movement.linear.x = -self.linear_speed
            self.movement.angular.z = 0.0
        elif direction == "stop":
            self.movement.linear.x = 0.0
            self.movement.angular.z = 0.0

        self.pub.publish(self.movement)
        
if __name__ == '__main__':
    rospy.init_node("topic_pub_node")
    pub = CmdVelPublisher()
    rate = rospy.Rate(1)
    ctrl_c = False 

    def shutdownhook():
        global ctrl_c
        global pub
        rospy.loginfo("shutdown time!")

        ctrl_c = True
        pub.move("stop")
    
    rospy.on_shutdown(shutdownhook)
    while not ctrl_c:
        pub.move("forward")
        rate.sleep()