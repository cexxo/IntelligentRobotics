// Generated by gencpp from file my_package/srv2Request.msg
// DO NOT EDIT!


#ifndef MY_PACKAGE_MESSAGE_SRV2REQUEST_H
#define MY_PACKAGE_MESSAGE_SRV2REQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace my_package
{
template <class ContainerAllocator>
struct srv2Request_
{
  typedef srv2Request_<ContainerAllocator> Type;

  srv2Request_()
    : msg()  {
    }
  srv2Request_(const ContainerAllocator& _alloc)
    : msg(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::my_package::srv2Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_package::srv2Request_<ContainerAllocator> const> ConstPtr;

}; // struct srv2Request_

typedef ::my_package::srv2Request_<std::allocator<void> > srv2Request;

typedef boost::shared_ptr< ::my_package::srv2Request > srv2RequestPtr;
typedef boost::shared_ptr< ::my_package::srv2Request const> srv2RequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_package::srv2Request_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_package::srv2Request_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_package::srv2Request_<ContainerAllocator1> & lhs, const ::my_package::srv2Request_<ContainerAllocator2> & rhs)
{
  return lhs.msg == rhs.msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_package::srv2Request_<ContainerAllocator1> & lhs, const ::my_package::srv2Request_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_package::srv2Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_package::srv2Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::srv2Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::srv2Request_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::srv2Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::srv2Request_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_package::srv2Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a81d6a911dd350f0f2b592be405d547";
  }

  static const char* value(const ::my_package::srv2Request_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a81d6a911dd350fULL;
  static const uint64_t static_value2 = 0x0f2b592be405d547ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_package::srv2Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_package/srv2Request";
  }

  static const char* value(const ::my_package::srv2Request_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_package::srv2Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header msg\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::my_package::srv2Request_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_package::srv2Request_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srv2Request_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_package::srv2Request_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_package::srv2Request_<ContainerAllocator>& v)
  {
    s << indent << "msg: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PACKAGE_MESSAGE_SRV2REQUEST_H
