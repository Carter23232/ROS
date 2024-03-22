// Generated by gencpp from file chatter/newmsg.msg
// DO NOT EDIT!


#ifndef CHATTER_MESSAGE_NEWMSG_H
#define CHATTER_MESSAGE_NEWMSG_H

#include <ros/service_traits.h>


#include <chatter/newmsgRequest.h>
#include <chatter/newmsgResponse.h>


namespace chatter
{

struct newmsg
{

typedef newmsgRequest Request;
typedef newmsgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct newmsg
} // namespace chatter


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::chatter::newmsg > {
  static const char* value()
  {
    return "7d96ed730776804754140b85e64c862e";
  }

  static const char* value(const ::chatter::newmsg&) { return value(); }
};

template<>
struct DataType< ::chatter::newmsg > {
  static const char* value()
  {
    return "chatter/newmsg";
  }

  static const char* value(const ::chatter::newmsg&) { return value(); }
};


// service_traits::MD5Sum< ::chatter::newmsgRequest> should match
// service_traits::MD5Sum< ::chatter::newmsg >
template<>
struct MD5Sum< ::chatter::newmsgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::chatter::newmsg >::value();
  }
  static const char* value(const ::chatter::newmsgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::chatter::newmsgRequest> should match
// service_traits::DataType< ::chatter::newmsg >
template<>
struct DataType< ::chatter::newmsgRequest>
{
  static const char* value()
  {
    return DataType< ::chatter::newmsg >::value();
  }
  static const char* value(const ::chatter::newmsgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::chatter::newmsgResponse> should match
// service_traits::MD5Sum< ::chatter::newmsg >
template<>
struct MD5Sum< ::chatter::newmsgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::chatter::newmsg >::value();
  }
  static const char* value(const ::chatter::newmsgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::chatter::newmsgResponse> should match
// service_traits::DataType< ::chatter::newmsg >
template<>
struct DataType< ::chatter::newmsgResponse>
{
  static const char* value()
  {
    return DataType< ::chatter::newmsg >::value();
  }
  static const char* value(const ::chatter::newmsgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CHATTER_MESSAGE_NEWMSG_H