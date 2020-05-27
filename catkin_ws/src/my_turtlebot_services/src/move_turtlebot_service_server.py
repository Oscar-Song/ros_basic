#! /usr/bin/env python

import rospy
from std_srvs.srv import Trigger, TriggerResponse
from common_dir.laser_scan_reader import LaserScanReader
from common_dir.enums import Direction

class MoveBotServer(object):

    def __init__(self, serv_name="/move_turtlebot"):
        self._server = rospy.Service(serv_name, Trigger, self._get_resp)
        rospy.loginfo("Launched server: "+serv_name)
        self._laser_scan_reader = LaserScanReader()
        self._detection_dict = {}
        self._prev_dir = Direction.stop

    def _get_resp(self, request):
        #rospy.loginfo("Server received request")
        self._detection_dict, side_dir_recommended = self._laser_scan_reader.get_detection()
       
        response = TriggerResponse()
        response.success = self._crash_detected()
        response.message = str(self._get_dir_message(side_dir_recommended))
        return response

    def _crash_detected(self):
        for val in self._detection_dict.itervalues():
            if val:
                return True
        return False

    def _get_dir_message(self, side_dir_recommended):

        detec = self._detection_dict
        new_dir = Direction.stop 
        if not detec[Direction.left] and not detec[Direction.right]: 
            if not detec[Direction.forward]:
                new_dir = Direction.forward 
            else:
                # for the tricky race condition when it can't go forward and oscillates bet/w left and right
                if self._prev_dir is not Direction.forward:
                    new_dir = self._prev_dir 
                else:
                    new_dir = side_dir_recommended
        elif detec[Direction.left]:
            new_dir = Direction.right
        elif detec[Direction.right]: 
            new_dir = Direction.left
        else:
            rospy.logerr("Unknown situation countered! Detection mapping: "+detec)
            new_dir = Direction.stop
        self._prev_dir = new_dir
        return new_dir
                   
    '''
    def _get_dir_message(self, side_dir_recommended):
        detec = self._detection_dict
        if not detec[Direction.left] and not detec[Direction.right]:
            if not detec[Direction.forward]:
                return Direction.forward 
            else:
                return side_dir_recommended
        elif detec[Direction.left]:
            return Direction.right
        elif detec[Direction.right]: 
            return Direction.left
        else:
            rospy.logerr("Unknown situation countered! Detection mapping: "+detec)
            return Direction.stop
    '''

if __name__ == "__main__":
    rospy.init_node("move_turtlebot_service_server_node")
    MoveBotServer()
    rospy.spin()