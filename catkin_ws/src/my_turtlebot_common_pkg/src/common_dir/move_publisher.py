#! /usr/bin/env python

import rospy
import time
from geometry_msgs.msg import Twist
from common_dir.enums import Direction

class CmdVelPub(object):

    def __init__(self, linear_speed= 1, turning_speed=0.3):
        self._pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
        self._movement = Twist()
        self._linear_speed = linear_speed
        self._turning_speed = turning_speed
        self._rate = rospy.Rate(1)
        self._ctrl_c = False
        rospy.on_shutdown(self._shutdown_hook)
    
    def _publish_once_in_cmd_vel(self):
        """
        This is because publishing in topics sometimes fails the first time you publish.
        In continuos publishing systems there is no big deal but in systems that publish only
        once it IS very important.
        """
        while not self._ctrl_c:
            connections = self._pub.get_num_connections()
            if connections > 0:
                self._pub.publish(self._movement)
                #rospy.loginfo("Cmd Published")
                break
            else:
                self._rate.sleep()
    
    def _shutdown_hook(self):
        self._ctrl_c = True

    def move(self, command):
        if command == Direction.forward:
            self._movement.linear.x = self._linear_speed
            self._movement.angular.z = 0
        elif command == Direction.left:
            self._movement.linear.x = 0
            self._movement.angular.z = self._turning_speed
        elif command == Direction.right:
            self._movement.linear.x = 0
            self._movement.angular.z = -self._turning_speed
        elif command == Direction.stop:
            self._movement.linear.x = 0
            self._movement.angular.z = 0
        else:
            rospy.logerr("Unknown command is received")
            self.stop()

        #TODO: modify publish to allow publish even if first connection fails
        self._publish_once_in_cmd_vel()

    def stop(self):
        self._movement.linear.x = 0
        self._movement.angular.z = 0
        self._publish_once_in_cmd_vel()
        self._rate.sleep()

if __name__ == "__main__":
    rospy.init_node("move_publisher_node")
    move_pub = CmdVelPub()
    for i in range(9):
        move_pub.move(Direction.forward)
        time.sleep(1)
    for i in range(3):
        move_pub.stop()
        time.sleep(1)
    for i in range(7):
        move_pub.move(Direction.right)
        time.sleep(1)
    for i in range(2):
        move_pub.stop()
        time.sleep(1)
    for i in range(4):
        move_pub.move(Direction.forward)
        time.sleep(1)
    for i in range(5):
        move_pub.stop()
        time.sleep(1)