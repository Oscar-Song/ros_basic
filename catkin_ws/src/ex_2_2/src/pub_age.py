#! /usr/bin/env python

import rospy
from ex_2_2.msg import Age

rospy.init_node('pub_age_node')
pub = rospy.Publisher('/age_info', Age, queue_size=1)
rate = rospy.Rate(2)
age = Age()
age.years = 1
age.months = 10
age.days = 20    

while not rospy.is_shutdown(): 
  age.days += 1
  if age.days > 30:
      age.days = 1
      age.months+=1
  if age.months > 12:
      age.months = 1
      age.years+=1

  pub.publish(age)
  rate.sleep()