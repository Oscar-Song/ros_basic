#! /usr/bin/env python

import rospy
import time
from imu_subscriber import ImuSubscriber
from std_srvs.srv import Trigger, TriggerResponse

class SpheroServer:

    def __init__(self, server_name = "/move_sphero"):
        self._service = rospy.Service(server_name, Trigger, self._callback)
        rospy.loginfo("Launching server: "+server_name)
        self._detection_dict = {}
        self._imu_reader = ImuSubscriber()

    def _callback(self, request):
        rospy.loginfo("Request incoming")
        self._detection_dict = self._imu_reader.get_four_sector_detection()

        response = TriggerResponse()
        response.success = self._crash_detected()
        response.message = self._get_direction()

        return response
    
    def _crash_detected(self):
        for key, value in self._detection_dict.iteritems():
            if value:
                return True
        return False

    def _get_direction(self):
        if not self._detection_dict["front"]:
            return "forwards"
        else:
            if not self._detection_dict["back"]:
                return "backwards"
            else:
                if not self._detection_dict["right"]:
                    return "right"
                else:
                    return "left"

if __name__ == "__main__":
    rospy.init_node("sphero_server")
    server = SpheroServer()
    rospy.spin()
            
