// Generated by gencpp from file my_sphero_actions/record_odomFeedback.msg
// DO NOT EDIT!


#ifndef MY_SPHERO_ACTIONS_MESSAGE_RECORD_ODOMFEEDBACK_H
#define MY_SPHERO_ACTIONS_MESSAGE_RECORD_ODOMFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_sphero_actions
{
template <class ContainerAllocator>
struct record_odomFeedback_
{
  typedef record_odomFeedback_<ContainerAllocator> Type;

  record_odomFeedback_()
    {
    }
  record_odomFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct record_odomFeedback_

typedef ::my_sphero_actions::record_odomFeedback_<std::allocator<void> > record_odomFeedback;

typedef boost::shared_ptr< ::my_sphero_actions::record_odomFeedback > record_odomFeedbackPtr;
typedef boost::shared_ptr< ::my_sphero_actions::record_odomFeedback const> record_odomFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_sphero_actions

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'my_sphero_actions': ['/home/user/catkin_ws/devel/share/my_sphero_actions/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::my_sphero_actions::record_odomFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_sphero_actions/record_odomFeedback";
  }

  static const char* value(const ::my_sphero_actions::record_odomFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback, empty\n\
";
  }

  static const char* value(const ::my_sphero_actions::record_odomFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct record_odomFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_sphero_actions::record_odomFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::my_sphero_actions::record_odomFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MY_SPHERO_ACTIONS_MESSAGE_RECORD_ODOMFEEDBACK_H
