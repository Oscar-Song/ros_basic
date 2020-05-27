#! /usr/bin/env python

import rospy
from nav_msgs.msg import Odometry

class OdomReader(object):
    def __init__(self):
        self._reader = rospy.Subscriber('/odom', Odometry, self._read_odom)
        rospy.loginfo("Odometry Subscriber launched")
        self._odom = Odometry()
    def _read_odom(self, odom):
        #rospy.loginfo("Reading Odometry")
        self._odom = odom
    def get_odom(self):
        return self._odom
    
if __name__ == "__main__":
    rospy.init_node("odom_reader.node")
    odom_reader = OdomReader()
    rate = rospy.Rate(1)
    ctrl_c = False

    def shutdown_hook():
        global ctrl_c
        rospy.loginfo("Shutting down Odom reader")
        ctrl_c = True
    
    rospy.on_shutdown(shutdown_hook)
    while not ctrl_c:
        data = odom_reader.get_odom()
        rospy.loginfo(data)
        rate.sleep()