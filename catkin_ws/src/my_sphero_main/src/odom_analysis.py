#! /usr/bin/env python

import rospy
import math
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Vector3

class OdomAnalysis(object):

    def __init__(self):
        pass

    def check_dist_reached(self, goal_dist, odom_list):
        if len(odom_list) < 2:
            rospy.logdebug("Odometry list must have at least two items")
            return False
        
        return (self._get_distance(odom_list) >= goal_dist) 
    
    def _get_position(self, odom):
        return odom.pose.pose.position
    
    def _get_distance(self, odom_list):

        start_pos = self._get_position(odom_list[0])
        end_pos = self._get_position(odom_list[len(odom_list)-1])
        rospy.logdebug("[Start position: "+str(start_pos)+", ending position: "+str(end_pos)+"]")

        dist_vector = self._create_vector(start_pos, end_pos)

        return self._get_len_vector(dist_vector)
    
    def _create_vector(self, start_pos, end_pos):
        dist_vec = Vector3()
        dist_vec.x = end_pos.x - start_pos.x
        dist_vec.y = end_pos.y - start_pos.y
        dist_vec.z = end_pos.z - start_pos.z
        return dist_vec
    
    def _get_len_vector(self, vector):
        return math.sqrt(math.pow(vector.x,2)+math.pow(vector.y,2)+math.pow(vector.z,2))
    
    
