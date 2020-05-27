#! /usr/bin/env python

import rospy
from std_srvs.srv import Trigger, TriggerRequest

if __name__ == "__main__":
    rospy.init_node("move_turtlebot_client_node")

    server_name = "/move_turtlebot"
    #wait for service to become available
    rospy.wait_for_service(server_name)

    #define client and request object
    client = rospy.ServiceProxy(server_name, Trigger)
    request = TriggerRequest()

    #send the request
    result = client(request)
    rospy.loginfo(result)

    rate = rospy.Rate(1)
    ctrl_c = False
    def shutdown_hook():
        global ctrl_c
        rospy.loginfo("Shutting down Service Client")
        ctrl_c = True 
    rospy.on_shutdown(shutdown_hook)

    while not ctrl_c:
        result = client(request)
        print result
        rate.sleep()