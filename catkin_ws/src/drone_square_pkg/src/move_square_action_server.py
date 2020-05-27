#! /usr/bin/env python
import rospy
import time
import actionlib

from actionlib.msg import TestAction, TestActionFeedback, TestActionResult
from geometry_msgs.msg import Twist
from move_drone_square import MoveDroneSquare

class MoveDroneClass(object):
    
  # create messages that are used to publish feedback/result
  _feedback = TestActionFeedback()
  _result   = TestActionResult()

  def __init__(self):
    # creates the action server
    self._as = actionlib.SimpleActionServer("drone_square", TestAction, self.goal_callback, False)
    rospy.loginfo('Initiated the server')
    self._as.start()
    
  def goal_callback(self, goal):
    # this callback is called when the action server is called.
    # this is the function that moves the drone
    # and returns the sequence to the node that called the action server
    
    # helper variables
    r = rospy.Rate(1)
    success = True
    drone = MoveDroneSquare()
    
    
    
    #takeoff
    drone.takeoff()

    # starts moving in square
    #count time
    start_time = time.time()
    square_side = goal.goal

    # prepare feedback
    self._feedback.feedback = 1
    while self._feedback.feedback <= 4:
    
      # check that preempt (cancelation) has not been requested by the action client
      if self._as.is_preempt_requested():
        rospy.loginfo('The goal has been cancelled/preempted')
        # the following line, sets the client in preempted state (goal cancelled)
        self._as.set_preempted()
        success = False
        # we end the movement of the drone
        break

      drone.move_square_side(square_side)
      self._feedback.feedback += 1
      self._as.publish_feedback(self._feedback)
      r.sleep()
      

    #get total time elapsed
    elapsed_time = time.time() - start_time

    #landing
    drone.landing()
    
    # at this point, either the goal has been achieved (success==true)
    # or the client preempted the goal (success==false)
    # If success, then we publish the final result
    # If not success, we do not publish anything in the result
    if success:
      self._result.result = elapsed_time
      rospy.loginfo('Succeeded moving the drone in square' )
      self._as.set_succeeded(self._result)
      
if __name__ == '__main__':
  rospy.init_node('move_square_drone')
  MoveDroneClass()
  rospy.spin()