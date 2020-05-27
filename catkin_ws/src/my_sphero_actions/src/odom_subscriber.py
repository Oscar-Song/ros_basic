#! /usr/bin/env python

import rospy
from nav_msgs.msg import Odometry

class OdomSubscriber:

    def __init__(self):
        self._sub = rospy.Subscriber('/odom', Odometry, self.callback)
        self._odom = Odometry()

    def callback(self, msg):
        self._odom = msg
        #rospy.loginfo(self._odom)

    def get_odom(self):
        return self._odom

if __name__ =="__main__":
    rospy.init_node("odom_sub_node")
    sub = OdomSubscriber()
    rospy.loginfo(sub.get_odom())
    rate = rospy.Rate(0.5)
    ctrl_c = False
    def shutdownhook():
        global ctrl_c
        ctrl_c = True
        rospy.loginfo("Odom Subscriber shutting down")
    
    rospy.on_shutdown(shutdownhook)
    while not ctrl_c:
        data = sub.get_odom()
        rospy.loginfo(data)
        rate.sleep()