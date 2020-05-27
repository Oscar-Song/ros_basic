#! /usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

left_range = 0
front_range = 0
right_range = 0

def callback(scan):
    list_globals = globals()
    range_len = len(scan.ranges)
    list_globals['left_range'] = scan.ranges[range_len-1]
    list_globals['front_range'] = scan.ranges[range_len/2]
    list_globals['right_range'] = scan.ranges[0]

def has_obs(range):
    return (range < 1)

def get_new_move_z(front, left, right): 
    go_forw = 0
    turn_left = 1
    turn_right = -1

    if not has_obs(left) and not has_obs(right):
        return turn_left if has_obs(front) else go_forw
    elif has_obs(left):
        return turn_right
    else: 
        return turn_left

rospy.init_node('topics_quiz_node')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)

rate = rospy.Rate(2)
move = Twist()
move.linear.x = 0.5
move.angular.z = 0


while not rospy.is_shutdown():
  move.angular.z = get_new_move_z(front_range,left_range, right_range)
  pub.publish(move)
  rate.sleep()
