; Auto-generated. Do not edit!


(cl:in-package my_turtlebot_actions-msg)


;//! \htmlinclude record_odomFeedback.msg.html

(cl:defclass <record_odomFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass record_odomFeedback (<record_odomFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_odomFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_odomFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_turtlebot_actions-msg:<record_odomFeedback> is deprecated: use my_turtlebot_actions-msg:record_odomFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_odomFeedback>) ostream)
  "Serializes a message object of type '<record_odomFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_odomFeedback>) istream)
  "Deserializes a message object of type '<record_odomFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_odomFeedback>)))
  "Returns string type for a message object of type '<record_odomFeedback>"
  "my_turtlebot_actions/record_odomFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_odomFeedback)))
  "Returns string type for a message object of type 'record_odomFeedback"
  "my_turtlebot_actions/record_odomFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_odomFeedback>)))
  "Returns md5sum for a message object of type '<record_odomFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_odomFeedback)))
  "Returns md5sum for a message object of type 'record_odomFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_odomFeedback>)))
  "Returns full string definition for message of type '<record_odomFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback, empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_odomFeedback)))
  "Returns full string definition for message of type 'record_odomFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback, empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_odomFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_odomFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'record_odomFeedback
))
