// Generated by gencpp from file planning/Ltp_stub_data.msg
// DO NOT EDIT!


#ifndef PLANNING_MESSAGE_LTP_STUB_DATA_H
#define PLANNING_MESSAGE_LTP_STUB_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <planning/Car_info.h>
#include <planning/Track_map.h>
#include <planning/State_machine.h>
#include <planning/Car_position.h>

namespace planning
{
template <class ContainerAllocator>
struct Ltp_stub_data_
{
  typedef Ltp_stub_data_<ContainerAllocator> Type;

  Ltp_stub_data_()
    : car_info()
    , map()
    , state_machine()
    , car_position()  {
    }
  Ltp_stub_data_(const ContainerAllocator& _alloc)
    : car_info(_alloc)
    , map(_alloc)
    , state_machine(_alloc)
    , car_position(_alloc)  {
  (void)_alloc;
    }



   typedef  ::planning::Car_info_<ContainerAllocator>  _car_info_type;
  _car_info_type car_info;

   typedef  ::planning::Track_map_<ContainerAllocator>  _map_type;
  _map_type map;

   typedef  ::planning::State_machine_<ContainerAllocator>  _state_machine_type;
  _state_machine_type state_machine;

   typedef  ::planning::Car_position_<ContainerAllocator>  _car_position_type;
  _car_position_type car_position;





  typedef boost::shared_ptr< ::planning::Ltp_stub_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning::Ltp_stub_data_<ContainerAllocator> const> ConstPtr;

}; // struct Ltp_stub_data_

typedef ::planning::Ltp_stub_data_<std::allocator<void> > Ltp_stub_data;

typedef boost::shared_ptr< ::planning::Ltp_stub_data > Ltp_stub_dataPtr;
typedef boost::shared_ptr< ::planning::Ltp_stub_data const> Ltp_stub_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning::Ltp_stub_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning::Ltp_stub_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning::Ltp_stub_data_<ContainerAllocator1> & lhs, const ::planning::Ltp_stub_data_<ContainerAllocator2> & rhs)
{
  return lhs.car_info == rhs.car_info &&
    lhs.map == rhs.map &&
    lhs.state_machine == rhs.state_machine &&
    lhs.car_position == rhs.car_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning::Ltp_stub_data_<ContainerAllocator1> & lhs, const ::planning::Ltp_stub_data_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planning::Ltp_stub_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning::Ltp_stub_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::Ltp_stub_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::Ltp_stub_data_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::Ltp_stub_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::Ltp_stub_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning::Ltp_stub_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "48f255fc4f3be5fabaaa233ba03e6166";
  }

  static const char* value(const ::planning::Ltp_stub_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x48f255fc4f3be5faULL;
  static const uint64_t static_value2 = 0xbaaa233ba03e6166ULL;
};

template<class ContainerAllocator>
struct DataType< ::planning::Ltp_stub_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning/Ltp_stub_data";
  }

  static const char* value(const ::planning::Ltp_stub_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning::Ltp_stub_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Car_info car_info\n"
"Track_map map\n"
"State_machine state_machine\n"
"Car_position car_position\n"
"================================================================================\n"
"MSG: planning/Car_info\n"
"float32 speed \n"
"float32 angle\n"
"int8 cpu_temperature\n"
"int8 engine_temperature\n"
"int8 brake_temperature\n"
"float32 fuel_level\n"
"================================================================================\n"
"MSG: planning/Track_map\n"
"uint8[] track_map\n"
"================================================================================\n"
"MSG: planning/State_machine\n"
"string state\n"
"================================================================================\n"
"MSG: planning/Car_position\n"
"uint32 car_position_x\n"
"uint32 car_position_y\n"
;
  }

  static const char* value(const ::planning::Ltp_stub_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning::Ltp_stub_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.car_info);
      stream.next(m.map);
      stream.next(m.state_machine);
      stream.next(m.car_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ltp_stub_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning::Ltp_stub_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning::Ltp_stub_data_<ContainerAllocator>& v)
  {
    s << indent << "car_info: ";
    s << std::endl;
    Printer< ::planning::Car_info_<ContainerAllocator> >::stream(s, indent + "  ", v.car_info);
    s << indent << "map: ";
    s << std::endl;
    Printer< ::planning::Track_map_<ContainerAllocator> >::stream(s, indent + "  ", v.map);
    s << indent << "state_machine: ";
    s << std::endl;
    Printer< ::planning::State_machine_<ContainerAllocator> >::stream(s, indent + "  ", v.state_machine);
    s << indent << "car_position: ";
    s << std::endl;
    Printer< ::planning::Car_position_<ContainerAllocator> >::stream(s, indent + "  ", v.car_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MESSAGE_LTP_STUB_DATA_H
