// Generated by gencpp from file my_package/myActionResult.msg
// DO NOT EDIT!


#ifndef MY_PACKAGE_MESSAGE_MYACTIONRESULT_H
#define MY_PACKAGE_MESSAGE_MYACTIONRESULT_H


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
struct myActionResult_
{
  typedef myActionResult_<ContainerAllocator> Type;

  myActionResult_()
    : result_header()
    , goal_reached(false)  {
    }
  myActionResult_(const ContainerAllocator& _alloc)
    : result_header(_alloc)
    , goal_reached(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _result_header_type;
  _result_header_type result_header;

   typedef uint8_t _goal_reached_type;
  _goal_reached_type goal_reached;





  typedef boost::shared_ptr< ::my_package::myActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_package::myActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct myActionResult_

typedef ::my_package::myActionResult_<std::allocator<void> > myActionResult;

typedef boost::shared_ptr< ::my_package::myActionResult > myActionResultPtr;
typedef boost::shared_ptr< ::my_package::myActionResult const> myActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_package::myActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_package::myActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_package::myActionResult_<ContainerAllocator1> & lhs, const ::my_package::myActionResult_<ContainerAllocator2> & rhs)
{
  return lhs.result_header == rhs.result_header &&
    lhs.goal_reached == rhs.goal_reached;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_package::myActionResult_<ContainerAllocator1> & lhs, const ::my_package::myActionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_package::myActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_package::myActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::myActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::myActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::myActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::myActionResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_package::myActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16b66d62c836ef7c10106a7a2ba9ddcc";
  }

  static const char* value(const ::my_package::myActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16b66d62c836ef7cULL;
  static const uint64_t static_value2 = 0x10106a7a2ba9ddccULL;
};

template<class ContainerAllocator>
struct DataType< ::my_package::myActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_package/myActionResult";
  }

  static const char* value(const ::my_package::myActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_package::myActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"std_msgs/Header result_header\n"
"bool goal_reached\n"
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

  static const char* value(const ::my_package::myActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_package::myActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result_header);
      stream.next(m.goal_reached);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct myActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_package::myActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_package::myActionResult_<ContainerAllocator>& v)
  {
    s << indent << "result_header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.result_header);
    s << indent << "goal_reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.goal_reached);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PACKAGE_MESSAGE_MYACTIONRESULT_H