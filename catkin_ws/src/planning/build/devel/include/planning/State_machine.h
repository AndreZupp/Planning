// Generated by gencpp from file planning/State_machine.msg
// DO NOT EDIT!


#ifndef PLANNING_MESSAGE_STATE_MACHINE_H
#define PLANNING_MESSAGE_STATE_MACHINE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace planning
{
template <class ContainerAllocator>
struct State_machine_
{
  typedef State_machine_<ContainerAllocator> Type;

  State_machine_()
    : state()  {
    }
  State_machine_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::planning::State_machine_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning::State_machine_<ContainerAllocator> const> ConstPtr;

}; // struct State_machine_

typedef ::planning::State_machine_<std::allocator<void> > State_machine;

typedef boost::shared_ptr< ::planning::State_machine > State_machinePtr;
typedef boost::shared_ptr< ::planning::State_machine const> State_machineConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning::State_machine_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning::State_machine_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning::State_machine_<ContainerAllocator1> & lhs, const ::planning::State_machine_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning::State_machine_<ContainerAllocator1> & lhs, const ::planning::State_machine_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planning::State_machine_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning::State_machine_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::State_machine_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::State_machine_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::State_machine_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::State_machine_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning::State_machine_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af6d3a99f0fbeb66d3248fa4b3e675fb";
  }

  static const char* value(const ::planning::State_machine_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf6d3a99f0fbeb66ULL;
  static const uint64_t static_value2 = 0xd3248fa4b3e675fbULL;
};

template<class ContainerAllocator>
struct DataType< ::planning::State_machine_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning/State_machine";
  }

  static const char* value(const ::planning::State_machine_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning::State_machine_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string state\n"
;
  }

  static const char* value(const ::planning::State_machine_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning::State_machine_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct State_machine_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning::State_machine_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning::State_machine_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MESSAGE_STATE_MACHINE_H
