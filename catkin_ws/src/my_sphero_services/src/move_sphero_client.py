import rospy
import time
from std_srvs.srv import Trigger, TriggerRequest

class SpheroClient:

    def __init__(self, server_name="/move_sphero"):
        rospy.loginfo("Launching client to call /move_sphero")
        rospy.wait_for_service(server_name)
        self._client = rospy.ServiceProxy(server_name, Trigger)
        self._object = TriggerRequest()
    
    def call_server(self):

        result = self._client(self._object)
        print result

if __name__ == "__main__":
    rospy.init_node("sphero_client")
    client = SpheroClient()
    client.call_server()
    rospy.spin()