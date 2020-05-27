;; Auto-generated. Do not edit!


(when (boundp 'my_custom_src_msg_pkg::CustomDurationMessage)
  (if (not (find-package "MY_CUSTOM_SRC_MSG_PKG"))
    (make-package "MY_CUSTOM_SRC_MSG_PKG"))
  (shadow 'CustomDurationMessage (find-package "MY_CUSTOM_SRC_MSG_PKG")))
(unless (find-package "MY_CUSTOM_SRC_MSG_PKG::CUSTOMDURATIONMESSAGE")
  (make-package "MY_CUSTOM_SRC_MSG_PKG::CUSTOMDURATIONMESSAGE"))
(unless (find-package "MY_CUSTOM_SRC_MSG_PKG::CUSTOMDURATIONMESSAGEREQUEST")
  (make-package "MY_CUSTOM_SRC_MSG_PKG::CUSTOMDURATIONMESSAGEREQUEST"))
(unless (find-package "MY_CUSTOM_SRC_MSG_PKG::CUSTOMDURATIONMESSAGERESPONSE")
  (make-package "MY_CUSTOM_SRC_MSG_PKG::CUSTOMDURATIONMESSAGERESPONSE"))

(in-package "ROS")





(defclass my_custom_src_msg_pkg::CustomDurationMessageRequest
  :super ros::object
  :slots (_duration ))

(defmethod my_custom_src_msg_pkg::CustomDurationMessageRequest
  (:init
   (&key
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _duration (round __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_custom_src_msg_pkg::CustomDurationMessageResponse
  :super ros::object
  :slots ())

(defmethod my_custom_src_msg_pkg::CustomDurationMessageResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass my_custom_src_msg_pkg::CustomDurationMessage
  :super ros::object
  :slots ())

(setf (get my_custom_src_msg_pkg::CustomDurationMessage :md5sum-) "1f60182c6a4cf2e688b1837c24d5f12e")
(setf (get my_custom_src_msg_pkg::CustomDurationMessage :datatype-) "my_custom_src_msg_pkg/CustomDurationMessage")
(setf (get my_custom_src_msg_pkg::CustomDurationMessage :request) my_custom_src_msg_pkg::CustomDurationMessageRequest)
(setf (get my_custom_src_msg_pkg::CustomDurationMessage :response) my_custom_src_msg_pkg::CustomDurationMessageResponse)

(defmethod my_custom_src_msg_pkg::CustomDurationMessageRequest
  (:response () (instance my_custom_src_msg_pkg::CustomDurationMessageResponse :init)))

(setf (get my_custom_src_msg_pkg::CustomDurationMessageRequest :md5sum-) "1f60182c6a4cf2e688b1837c24d5f12e")
(setf (get my_custom_src_msg_pkg::CustomDurationMessageRequest :datatype-) "my_custom_src_msg_pkg/CustomDurationMessageRequest")
(setf (get my_custom_src_msg_pkg::CustomDurationMessageRequest :definition-)
      "int32 duration
---

")

(setf (get my_custom_src_msg_pkg::CustomDurationMessageResponse :md5sum-) "1f60182c6a4cf2e688b1837c24d5f12e")
(setf (get my_custom_src_msg_pkg::CustomDurationMessageResponse :datatype-) "my_custom_src_msg_pkg/CustomDurationMessageResponse")
(setf (get my_custom_src_msg_pkg::CustomDurationMessageResponse :definition-)
      "int32 duration
---

")



(provide :my_custom_src_msg_pkg/CustomDurationMessage "1f60182c6a4cf2e688b1837c24d5f12e")


