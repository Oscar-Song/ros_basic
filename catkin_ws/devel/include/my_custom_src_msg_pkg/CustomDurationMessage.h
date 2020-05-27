// Generated by gencpp from file my_custom_src_msg_pkg/CustomDurationMessage.msg
// DO NOT EDIT!


#ifndef MY_CUSTOM_SRC_MSG_PKG_MESSAGE_CUSTOMDURATIONMESSAGE_H
#define MY_CUSTOM_SRC_MSG_PKG_MESSAGE_CUSTOMDURATIONMESSAGE_H

#include <ros/service_traits.h>


#include <my_custom_src_msg_pkg/CustomDurationMessageRequest.h>
#include <my_custom_src_msg_pkg/CustomDurationMessageResponse.h>


namespace my_custom_src_msg_pkg
{

struct CustomDurationMessage
{

typedef CustomDurationMessageRequest Request;
typedef CustomDurationMessageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CustomDurationMessage
} // namespace my_custom_src_msg_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessage > {
  static const char* value()
  {
    return "1f60182c6a4cf2e688b1837c24d5f12e";
  }

  static const char* value(const ::my_custom_src_msg_pkg::CustomDurationMessage&) { return value(); }
};

template<>
struct DataType< ::my_custom_src_msg_pkg::CustomDurationMessage > {
  static const char* value()
  {
    return "my_custom_src_msg_pkg/CustomDurationMessage";
  }

  static const char* value(const ::my_custom_src_msg_pkg::CustomDurationMessage&) { return value(); }
};


// service_traits::MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessageRequest> should match 
// service_traits::MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessage > 
template<>
struct MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessage >::value();
  }
  static const char* value(const ::my_custom_src_msg_pkg::CustomDurationMessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_custom_src_msg_pkg::CustomDurationMessageRequest> should match 
// service_traits::DataType< ::my_custom_src_msg_pkg::CustomDurationMessage > 
template<>
struct DataType< ::my_custom_src_msg_pkg::CustomDurationMessageRequest>
{
  static const char* value()
  {
    return DataType< ::my_custom_src_msg_pkg::CustomDurationMessage >::value();
  }
  static const char* value(const ::my_custom_src_msg_pkg::CustomDurationMessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessageResponse> should match 
// service_traits::MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessage > 
template<>
struct MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_custom_src_msg_pkg::CustomDurationMessage >::value();
  }
  static const char* value(const ::my_custom_src_msg_pkg::CustomDurationMessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_custom_src_msg_pkg::CustomDurationMessageResponse> should match 
// service_traits::DataType< ::my_custom_src_msg_pkg::CustomDurationMessage > 
template<>
struct DataType< ::my_custom_src_msg_pkg::CustomDurationMessageResponse>
{
  static const char* value()
  {
    return DataType< ::my_custom_src_msg_pkg::CustomDurationMessage >::value();
  }
  static const char* value(const ::my_custom_src_msg_pkg::CustomDurationMessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_CUSTOM_SRC_MSG_PKG_MESSAGE_CUSTOMDURATIONMESSAGE_H
