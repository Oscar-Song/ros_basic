#! /usr/bin/env python
import rospy
import time
import actionlib
from ardrone_as.msg import ArdroneAction, ArdroneGoal, ArdroneResult, ArdroneFeedback
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4
nImage = 1

# definition of the feedback callback. This will be called when feedback
# is received from the action server
# it just prints a message indicating a new message has been received
def feedback_callback(feedback):
    global nImage
    print('[Feedback] image n.%d received'%nImage)
    nImage += 1

# initializes the action client node
rospy.init_node('drone_action_client')

# create the connection to the action server
client = actionlib.SimpleActionClient('/ardrone_action_server', ArdroneAction)
# waits until the action server is up and running
client.wait_for_server()

# creates a goal to send to the action server
goal = ArdroneGoal()
goal.nseconds = 10 # indicates, take pictures along 10 seconds

rate = rospy.Rate(1)
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
landing_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
takeoff_msg = Empty()
landing_msg = Empty()
# sends the goal to the action server, specifying which feedback function
# to call when feedback received
client.send_goal(goal, feedback_cb=feedback_callback)

for i in range(5):
    rospy.loginfo("Drone is taking off")
    takeoff_pub.publish(takeoff_msg)
    time.sleep(1)


# Uncomment these lines to test goal preemption:
#time.sleep(3.0)
#client.cancel_goal()  # would cancel the goal 3 seconds after starting

# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time 
status = client.get_state()
while status < DONE:
    move = Twist()
    move.linear.x = 5
    move.angular.z = 5
    pub.publish(move)
    rospy.loginfo("Drone is moving")
    rate.sleep()
    status = client.get_state()
    rospy.loginfo("status: "+str(status))

for i in range(5):
    rospy.loginfo("Drone is landing")
    landing_pub.publish(landing_msg)
    time.sleep(1)


# check the client API link below for more info

rospy.loginfo("[Result] State: "+str(status))
if status == ERROR:
    rospy.logerr("Something went wrong in the Server Side")
if status == WARN:
    rospy.logwarn("There is a warning in the Server Side")
