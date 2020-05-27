# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_sphero_actions: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imy_sphero_actions:/home/user/catkin_ws/devel/share/my_sphero_actions/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_sphero_actions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" "my_sphero_actions/record_odomResult:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalID:nav_msgs/Odometry:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:my_sphero_actions/record_odomGoal"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" "my_sphero_actions/record_odomFeedback:my_sphero_actions/record_odomResult:geometry_msgs/Twist:actionlib_msgs/GoalStatus:geometry_msgs/Quaternion:my_sphero_actions/record_odomActionGoal:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/Vector3:my_sphero_actions/record_odomActionResult:geometry_msgs/Pose:my_sphero_actions/record_odomGoal:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalID:nav_msgs/Odometry:my_sphero_actions/record_odomActionFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" NAME_WE)
add_custom_target(_my_sphero_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sphero_actions" "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" "my_sphero_actions/record_odomFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_cpp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
)

### Generating Services

### Generating Module File
_generate_module_cpp(my_sphero_actions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_sphero_actions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_sphero_actions_generate_messages my_sphero_actions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_cpp _my_sphero_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sphero_actions_gencpp)
add_dependencies(my_sphero_actions_gencpp my_sphero_actions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sphero_actions_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_eus(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
)

### Generating Services

### Generating Module File
_generate_module_eus(my_sphero_actions
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_sphero_actions_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_sphero_actions_generate_messages my_sphero_actions_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_eus _my_sphero_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sphero_actions_geneus)
add_dependencies(my_sphero_actions_geneus my_sphero_actions_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sphero_actions_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_lisp(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
)

### Generating Services

### Generating Module File
_generate_module_lisp(my_sphero_actions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_sphero_actions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_sphero_actions_generate_messages my_sphero_actions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_lisp _my_sphero_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sphero_actions_genlisp)
add_dependencies(my_sphero_actions_genlisp my_sphero_actions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sphero_actions_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_nodejs(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
)

### Generating Services

### Generating Module File
_generate_module_nodejs(my_sphero_actions
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_sphero_actions_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_sphero_actions_generate_messages my_sphero_actions_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_nodejs _my_sphero_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sphero_actions_gennodejs)
add_dependencies(my_sphero_actions_gennodejs my_sphero_actions_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sphero_actions_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)
_generate_msg_py(my_sphero_actions
  "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
)

### Generating Services

### Generating Module File
_generate_module_py(my_sphero_actions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_sphero_actions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_sphero_actions_generate_messages my_sphero_actions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomResult.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomGoal.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomAction.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/my_sphero_actions/msg/record_odomActionFeedback.msg" NAME_WE)
add_dependencies(my_sphero_actions_generate_messages_py _my_sphero_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sphero_actions_genpy)
add_dependencies(my_sphero_actions_genpy my_sphero_actions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sphero_actions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sphero_actions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(my_sphero_actions_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(my_sphero_actions_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sphero_actions
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(my_sphero_actions_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(my_sphero_actions_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sphero_actions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(my_sphero_actions_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(my_sphero_actions_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sphero_actions
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(my_sphero_actions_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(my_sphero_actions_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sphero_actions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(my_sphero_actions_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(my_sphero_actions_generate_messages_py nav_msgs_generate_messages_py)
endif()
