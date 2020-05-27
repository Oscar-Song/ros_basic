#! /usr/bin/env python

import rospy
from sensor_msgs.msg import Imu

class ImuSubscriber:

    def __init__(self):
        self._sub = rospy.Subscriber("/sphero/imu/data3", Imu, self.callback)
        self._imu = Imu()
        self._threshold = 7.00

    def callback(self, msg):
        self._imu = msg
        #rospy.loginfo(self._imu)
    
    def get_imu(self):
        return self._imu

    def get_four_sector_detection(self):
        """
          ^y
          |
        z O -> x
        """
        x_accel = self._imu.linear_acceleration.x
        y_accel = self._imu.linear_acceleration.y
        z_accel = self._imu.linear_acceleration.z

        axis_list = [x_accel, y_accel, z_accel]
        max_axis_index = axis_list.index(max(axis_list))
        positive = axis_list[max_axis_index] >= 0
        significative_val = abs(axis_list[max_axis_index]) > self._threshold

        if significative_val:
            if max_axis_index == 0:
                # Winner is in the x-axis
                rospy.logwarn("[X="+str(x_accel)+"]")
                rospy.loginfo("[Y=[str"+str(y_accel)+", Z="+str(z_accel)+"]")
                if positive:
                    #should turn left
                    message = "right"
                else:
                    message = "left"
            elif max_axis_index == 1:
                #winner is in the y-axis
                rospy.logwarn("[Y="+str(y_accel)+"]")
                rospy.loginfo("[X="+str(x_accel+", Z="+str(z_accel)+"]"))
                if positive:
                    message = "front"
                else:
                    message = "back"
            elif max_axis_index == 2:
                #winner is in the z-axis
                rospy.logwarn("[Z="+str(z_accel)+"]")
                rospy.loginfo("[X="+str(x_accel)+", Y="+str(y_accel)+"]")
                if positive:
                    message = "up"
                else:
                    message = "down"
            else:
                message = "unknown_direction"
        else:
            message = "nothing"
            rospy.loginfo("[X="+str(x_accel)+", Y="+str(y_accel)+", Z="+str(z_accel)+"]")
        return self.convert_to_dict(message)

    def convert_to_dict(self, message):
        #if there's a huge jump or fall there has to be a huge crash up in the front
        """
        Converts the fiven message to a dictionary telling in which direction there is a detection
        """
        detect_dict = {}
        # We consider that when there is a big Z axis component there has been a very big front crash
        detection_dict = {"front":(message=="front" or message=="up" or message=="down"),
                          "left":message=="left",
                          "right":message=="right",
                          "back":message=="back"}
        return detection_dict
    
if __name__ == "__main__":
    rospy.init_node("imu_sub_node")
    sub = ImuSubscriber()
    rate = rospy.Rate(0.5)
    ctrl_c = False

    def shutdownhook():
        global ctrl_c
        rospy.loginfo("Shutting IMU subscriber down")
        ctrl_c = True
    
    rospy.on_shutdown(shutdownhook)
    while not ctrl_c:
        data = sub.get_imu()
        rospy.loginfo(data)
        rate.sleep()
