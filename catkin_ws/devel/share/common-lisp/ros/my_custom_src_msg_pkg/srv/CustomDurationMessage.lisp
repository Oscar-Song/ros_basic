; Auto-generated. Do not edit!


(cl:in-package my_custom_src_msg_pkg-srv)


;//! \htmlinclude CustomDurationMessage-request.msg.html

(cl:defclass <CustomDurationMessage-request> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass CustomDurationMessage-request (<CustomDurationMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomDurationMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomDurationMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_src_msg_pkg-srv:<CustomDurationMessage-request> is deprecated: use my_custom_src_msg_pkg-srv:CustomDurationMessage-request instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <CustomDurationMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_src_msg_pkg-srv:duration-val is deprecated.  Use my_custom_src_msg_pkg-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomDurationMessage-request>) ostream)
  "Serializes a message object of type '<CustomDurationMessage-request>"
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomDurationMessage-request>) istream)
  "Deserializes a message object of type '<CustomDurationMessage-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomDurationMessage-request>)))
  "Returns string type for a service object of type '<CustomDurationMessage-request>"
  "my_custom_src_msg_pkg/CustomDurationMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomDurationMessage-request)))
  "Returns string type for a service object of type 'CustomDurationMessage-request"
  "my_custom_src_msg_pkg/CustomDurationMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomDurationMessage-request>)))
  "Returns md5sum for a message object of type '<CustomDurationMessage-request>"
  "1f60182c6a4cf2e688b1837c24d5f12e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomDurationMessage-request)))
  "Returns md5sum for a message object of type 'CustomDurationMessage-request"
  "1f60182c6a4cf2e688b1837c24d5f12e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomDurationMessage-request>)))
  "Returns full string definition for message of type '<CustomDurationMessage-request>"
  (cl:format cl:nil "int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomDurationMessage-request)))
  "Returns full string definition for message of type 'CustomDurationMessage-request"
  (cl:format cl:nil "int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomDurationMessage-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomDurationMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomDurationMessage-request
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude CustomDurationMessage-response.msg.html

(cl:defclass <CustomDurationMessage-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CustomDurationMessage-response (<CustomDurationMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomDurationMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomDurationMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_src_msg_pkg-srv:<CustomDurationMessage-response> is deprecated: use my_custom_src_msg_pkg-srv:CustomDurationMessage-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomDurationMessage-response>) ostream)
  "Serializes a message object of type '<CustomDurationMessage-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomDurationMessage-response>) istream)
  "Deserializes a message object of type '<CustomDurationMessage-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomDurationMessage-response>)))
  "Returns string type for a service object of type '<CustomDurationMessage-response>"
  "my_custom_src_msg_pkg/CustomDurationMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomDurationMessage-response)))
  "Returns string type for a service object of type 'CustomDurationMessage-response"
  "my_custom_src_msg_pkg/CustomDurationMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomDurationMessage-response>)))
  "Returns md5sum for a message object of type '<CustomDurationMessage-response>"
  "1f60182c6a4cf2e688b1837c24d5f12e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomDurationMessage-response)))
  "Returns md5sum for a message object of type 'CustomDurationMessage-response"
  "1f60182c6a4cf2e688b1837c24d5f12e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomDurationMessage-response>)))
  "Returns full string definition for message of type '<CustomDurationMessage-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomDurationMessage-response)))
  "Returns full string definition for message of type 'CustomDurationMessage-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomDurationMessage-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomDurationMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomDurationMessage-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomDurationMessage)))
  'CustomDurationMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomDurationMessage)))
  'CustomDurationMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomDurationMessage)))
  "Returns string type for a service object of type '<CustomDurationMessage>"
  "my_custom_src_msg_pkg/CustomDurationMessage")