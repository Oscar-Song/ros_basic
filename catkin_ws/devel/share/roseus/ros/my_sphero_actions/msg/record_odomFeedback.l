;; Auto-generated. Do not edit!


(when (boundp 'my_sphero_actions::record_odomFeedback)
  (if (not (find-package "MY_SPHERO_ACTIONS"))
    (make-package "MY_SPHERO_ACTIONS"))
  (shadow 'record_odomFeedback (find-package "MY_SPHERO_ACTIONS")))
(unless (find-package "MY_SPHERO_ACTIONS::RECORD_ODOMFEEDBACK")
  (make-package "MY_SPHERO_ACTIONS::RECORD_ODOMFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude record_odomFeedback.msg.html


(defclass my_sphero_actions::record_odomFeedback
  :super ros::object
  :slots ())

(defmethod my_sphero_actions::record_odomFeedback
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

(setf (get my_sphero_actions::record_odomFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get my_sphero_actions::record_odomFeedback :datatype-) "my_sphero_actions/record_odomFeedback")
(setf (get my_sphero_actions::record_odomFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback, empty

")



(provide :my_sphero_actions/record_odomFeedback "d41d8cd98f00b204e9800998ecf8427e")


