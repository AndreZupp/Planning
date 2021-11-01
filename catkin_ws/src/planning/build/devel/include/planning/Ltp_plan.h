// Generated by gencpp from file planning/Ltp_plan.msg
// DO NOT EDIT!


#ifndef PLANNING_MESSAGE_LTP_PLAN_H
#define PLANNING_MESSAGE_LTP_PLAN_H


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
struct Ltp_plan_
{
  typedef Ltp_plan_<ContainerAllocator> Type;

  Ltp_plan_()
    : pos_x_list()
    , pos_y_list()
    , speed()
    , angle()  {
    }
  Ltp_plan_(const ContainerAllocator& _alloc)
    : pos_x_list(_alloc)
    , pos_y_list(_alloc)
    , speed(_alloc)
    , angle(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _pos_x_list_type;
  _pos_x_list_type pos_x_list;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _pos_y_list_type;
  _pos_y_list_type pos_y_list;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _speed_type;
  _speed_type speed;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::planning::Ltp_plan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning::Ltp_plan_<ContainerAllocator> const> ConstPtr;

}; // struct Ltp_plan_

typedef ::planning::Ltp_plan_<std::allocator<void> > Ltp_plan;

typedef boost::shared_ptr< ::planning::Ltp_plan > Ltp_planPtr;
typedef boost::shared_ptr< ::planning::Ltp_plan const> Ltp_planConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning::Ltp_plan_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning::Ltp_plan_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning::Ltp_plan_<ContainerAllocator1> & lhs, const ::planning::Ltp_plan_<ContainerAllocator2> & rhs)
{
  return lhs.pos_x_list == rhs.pos_x_list &&
    lhs.pos_y_list == rhs.pos_y_list &&
    lhs.speed == rhs.speed &&
    lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning::Ltp_plan_<ContainerAllocator1> & lhs, const ::planning::Ltp_plan_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planning::Ltp_plan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning::Ltp_plan_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::Ltp_plan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::Ltp_plan_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::Ltp_plan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::Ltp_plan_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning::Ltp_plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84c9dd63f850849bf08d29bbdfe391dd";
  }

  static const char* value(const ::planning::Ltp_plan_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84c9dd63f850849bULL;
  static const uint64_t static_value2 = 0xf08d29bbdfe391ddULL;
};

template<class ContainerAllocator>
struct DataType< ::planning::Ltp_plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning/Ltp_plan";
  }

  static const char* value(const ::planning::Ltp_plan_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning::Ltp_plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32[] pos_x_list\n"
"uint32[] pos_y_list\n"
"float32[] speed\n"
"float32[] angle\n"
;
  }

  static const char* value(const ::planning::Ltp_plan_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning::Ltp_plan_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos_x_list);
      stream.next(m.pos_y_list);
      stream.next(m.speed);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ltp_plan_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning::Ltp_plan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning::Ltp_plan_<ContainerAllocator>& v)
  {
    s << indent << "pos_x_list[]" << std::endl;
    for (size_t i = 0; i < v.pos_x_list.size(); ++i)
    {
      s << indent << "  pos_x_list[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.pos_x_list[i]);
    }
    s << indent << "pos_y_list[]" << std::endl;
    for (size_t i = 0; i < v.pos_y_list.size(); ++i)
    {
      s << indent << "  pos_y_list[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.pos_y_list[i]);
    }
    s << indent << "speed[]" << std::endl;
    for (size_t i = 0; i < v.speed.size(); ++i)
    {
      s << indent << "  speed[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.speed[i]);
    }
    s << indent << "angle[]" << std::endl;
    for (size_t i = 0; i < v.angle.size(); ++i)
    {
      s << indent << "  angle[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.angle[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MESSAGE_LTP_PLAN_H
