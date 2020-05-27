
(cl:in-package :asdf)

(defsystem "my_sphero_actions-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "record_odomAction" :depends-on ("_package_record_odomAction"))
    (:file "_package_record_odomAction" :depends-on ("_package"))
    (:file "record_odomActionFeedback" :depends-on ("_package_record_odomActionFeedback"))
    (:file "_package_record_odomActionFeedback" :depends-on ("_package"))
    (:file "record_odomActionGoal" :depends-on ("_package_record_odomActionGoal"))
    (:file "_package_record_odomActionGoal" :depends-on ("_package"))
    (:file "record_odomActionResult" :depends-on ("_package_record_odomActionResult"))
    (:file "_package_record_odomActionResult" :depends-on ("_package"))
    (:file "record_odomFeedback" :depends-on ("_package_record_odomFeedback"))
    (:file "_package_record_odomFeedback" :depends-on ("_package"))
    (:file "record_odomGoal" :depends-on ("_package_record_odomGoal"))
    (:file "_package_record_odomGoal" :depends-on ("_package"))
    (:file "record_odomResult" :depends-on ("_package_record_odomResult"))
    (:file "_package_record_odomResult" :depends-on ("_package"))
  ))