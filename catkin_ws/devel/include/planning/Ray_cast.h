// Generated by gencpp from file planning/Ray_cast.msg
// DO NOT EDIT!


#ifndef PLANNING_MESSAGE_RAY_CAST_H
#define PLANNING_MESSAGE_RAY_CAST_H


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
struct Ray_cast_
{
  typedef Ray_cast_<ContainerAllocator> Type;

  Ray_cast_()
    : raycast()  {
      raycast.assign(0.0);
  }
  Ray_cast_(const ContainerAllocator& _alloc)
    : raycast()  {
  (void)_alloc;
      raycast.assign(0.0);
  }



   typedef boost::array<float, 120>  _raycast_type;
  _raycast_type raycast;





  typedef boost::shared_ptr< ::planning::Ray_cast_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning::Ray_cast_<ContainerAllocator> const> ConstPtr;

}; // struct Ray_cast_

typedef ::planning::Ray_cast_<std::allocator<void> > Ray_cast;

typedef boost::shared_ptr< ::planning::Ray_cast > Ray_castPtr;
typedef boost::shared_ptr< ::planning::Ray_cast const> Ray_castConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning::Ray_cast_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning::Ray_cast_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning::Ray_cast_<ContainerAllocator1> & lhs, const ::planning::Ray_cast_<ContainerAllocator2> & rhs)
{
  return lhs.raycast == rhs.raycast;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning::Ray_cast_<ContainerAllocator1> & lhs, const ::planning::Ray_cast_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planning::Ray_cast_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning::Ray_cast_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::Ray_cast_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::Ray_cast_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::Ray_cast_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::Ray_cast_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning::Ray_cast_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69032fc592b7f909842a6f6f945ea664";
  }

  static const char* value(const ::planning::Ray_cast_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69032fc592b7f909ULL;
  static const uint64_t static_value2 = 0x842a6f6f945ea664ULL;
};

template<class ContainerAllocator>
struct DataType< ::planning::Ray_cast_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning/Ray_cast";
  }

  static const char* value(const ::planning::Ray_cast_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning::Ray_cast_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[120] raycast\n"
;
  }

  static const char* value(const ::planning::Ray_cast_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning::Ray_cast_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.raycast);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ray_cast_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning::Ray_cast_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning::Ray_cast_<ContainerAllocator>& v)
  {
    s << indent << "raycast[]" << std::endl;
    for (size_t i = 0; i < v.raycast.size(); ++i)
    {
      s << indent << "  raycast[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.raycast[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MESSAGE_RAY_CAST_H
