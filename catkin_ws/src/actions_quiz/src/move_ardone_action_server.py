#! /usr/bin/env python
import rospy
import time
import actionlib

from actions_quiz.msg import CustomActionMsgAction, CustomActionMsgActionFeedback, CustomActionMsgActionResult
from move_drone import DroneMover

TAKEOFF = "TAKEOFF"
LAND = "LAND"

class MoveDroneClass(object):
    
  # create messages that are used to publish feedback/result
  _feedback = CustomActionMsgActionFeedback()
  _result   = CustomActionMsgActionResult()

  def __init__(self):
    # creates the action server
    self._as = actionlib.SimpleActionServer("action_custom_msg_as", CustomActionMsgAction, self.goal_callback, False)
    rospy.loginfo('Initiated the server')
    self._as.start()
    
  def goal_callback(self, goal):
    # this callback is called when the action server is called.
    # this is the function that moves the drone
    # and returns the sequence to the node that called the action server
    
    # helper variables
    r = rospy.Rate(1)
    success = True
    drone = DroneMover()

    self._feedback.feedback = goal.goal
    self._as.publish_feedback(self._feedback)
    if goal.goal.upper() == TAKEOFF:
        drone.takeoff()
    elif goal.goal.upper() == LAND:
        drone.landing()
    else:
        rospy.logerr("Nah bruh goal should be either TAKEFOFF or LAND")
        self._feedback.feedback = "Error!!!"
      
    r.sleep()
      
    
    # at this point, either the goal has been achieved (success==true)
    # or the client preempted the goal (success==false)
    # If success, then we publish the final result
    # If not success, we do not publish anything in the result
    if success:
      rospy.loginfo('Succeeded moving the drone' )
      self._as.set_succeeded(self._result)
      
if __name__ == '__main__':
  rospy.init_node('move_ardone_action_server')
  MoveDroneClass()
  rospy.spin()