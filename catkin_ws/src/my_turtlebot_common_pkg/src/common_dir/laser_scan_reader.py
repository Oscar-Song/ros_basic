#! /usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan
from common_dir.enums import Direction

class LaserScanReader(object):
    def __init__(self, side_range_threshold=0.2, front_range_threshold=1.2):
        self._reader = rospy.Subscriber("/kobuki/laser/scan", LaserScan, self._read_scan)
        rospy.loginfo("LaserScan Subscriber launched")
        self._laser_scan = LaserScan()
        self._side_range_threshold = side_range_threshold
        self._front_range_threshold = front_range_threshold

    def _read_scan(self, scan):
        #rospy.loginfo("Reading LaserScan")
        self._laser_scan = scan

    def get_scan(self):
        #rospy.loginfo("Get scan...")
        return self._laser_scan
    
    def _get_dir_max_range(self, left_range, right_range):
        return Direction.left if left_range > right_range else Direction.right

    def get_detection(self):
        #should return a dict as well as the side direction with the greatest range
        detect_dict =  {Direction.forward: False,
                        Direction.left: False,
                        Direction.right: False}
        ranges = self._laser_scan.ranges
        ranges_arr_len = len(ranges)
        if ranges_arr_len is 0:
            rospy.loginfo("LaserScan is still activating...")
            return detect_dict

        front_range = ranges[ranges_arr_len/2]
        left_range = ranges[ranges_arr_len - 1]
        right_range = ranges[0]

        rospy.loginfo("[front range: "+str(front_range)+", left range: "+str(left_range)+", right range: "+ str(right_range)+"]")
        
        if self._is_front_range_close(front_range):
            detect_dict[Direction.forward] = True
        if self._is_side_range_close(left_range):
            detect_dict[Direction.left] = True
        if self._is_side_range_close(right_range):
            detect_dict[Direction.right] = True
        
        return detect_dict, self._get_dir_max_range(left_range, right_range)

    def _is_side_range_close(self, range):
        return range < self._side_range_threshold
    
    def _is_front_range_close(self, range):
        return range < self._front_range_threshold

if __name__ == "__main__":
    rospy.init_node("laser_scan_reader_node")
    laser_scan_reader = LaserScanReader()
    rate = rospy.Rate(1)
    ctrl_c = False

    def shutdown_hook():
        global ctrl_c
        rospy.loginfo("Shutting down LaserScan subscriber")
        ctrl_c = True
    
    rospy.on_shutdown(shutdown_hook)
    while not ctrl_c:
        #data = laser_scan_reader.get_scan().ranges
        #rospy.loginfo(data)
        rate.sleep()