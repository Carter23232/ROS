// Generated by gencpp from file chatter/newmsgResponse.msg
// DO NOT EDIT!


#ifndef CHATTER_MESSAGE_NEWMSGRESPONSE_H
#define CHATTER_MESSAGE_NEWMSGRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace chatter
{
template <class ContainerAllocator>
struct newmsgResponse_
{
  typedef newmsgResponse_<ContainerAllocator> Type;

  newmsgResponse_()
    {
    }
  newmsgResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::chatter::newmsgResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chatter::newmsgResponse_<ContainerAllocator> const> ConstPtr;

}; // struct newmsgResponse_

typedef ::chatter::newmsgResponse_<std::allocator<void> > newmsgResponse;

typedef boost::shared_ptr< ::chatter::newmsgResponse > newmsgResponsePtr;
typedef boost::shared_ptr< ::chatter::newmsgResponse const> newmsgResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chatter::newmsgResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chatter::newmsgResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace chatter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::chatter::newmsgResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chatter::newmsgResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chatter::newmsgResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chatter::newmsgResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chatter::newmsgResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chatter::newmsgResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chatter::newmsgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::chatter::newmsgResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::chatter::newmsgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chatter/newmsgResponse";
  }

  static const char* value(const ::chatter::newmsgResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chatter::newmsgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::chatter::newmsgResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chatter::newmsgResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct newmsgResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chatter::newmsgResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::chatter::newmsgResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CHATTER_MESSAGE_NEWMSGRESPONSE_H
