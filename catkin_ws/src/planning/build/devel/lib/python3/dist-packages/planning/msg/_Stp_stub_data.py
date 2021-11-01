# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planning/Stp_stub_data.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import planning.msg

class Stp_stub_data(genpy.Message):
  _md5sum = "44c7d84071af36913c5f647289d9a734"
  _type = "planning/Stp_stub_data"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Ray_cast ray_cast
State_machine state_machine
Car_info car_info
# Command ltp_command
================================================================================
MSG: planning/Ray_cast
float32[120] raycast

================================================================================
MSG: planning/State_machine
string state
================================================================================
MSG: planning/Car_info
float32 speed 
float32 angle
int8 cpu_temperature
int8 engine_temperature
int8 brake_temperature
float32 fuel_level"""
  __slots__ = ['ray_cast','state_machine','car_info']
  _slot_types = ['planning/Ray_cast','planning/State_machine','planning/Car_info']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ray_cast,state_machine,car_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Stp_stub_data, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ray_cast is None:
        self.ray_cast = planning.msg.Ray_cast()
      if self.state_machine is None:
        self.state_machine = planning.msg.State_machine()
      if self.car_info is None:
        self.car_info = planning.msg.Car_info()
    else:
      self.ray_cast = planning.msg.Ray_cast()
      self.state_machine = planning.msg.State_machine()
      self.car_info = planning.msg.Car_info()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_120f().pack(*self.ray_cast.raycast))
      _x = self.state_machine.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f3bf().pack(_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ray_cast is None:
        self.ray_cast = planning.msg.Ray_cast()
      if self.state_machine is None:
        self.state_machine = planning.msg.State_machine()
      if self.car_info is None:
        self.car_info = planning.msg.Car_info()
      end = 0
      start = end
      end += 480
      self.ray_cast.raycast = _get_struct_120f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_machine.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_machine.state = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level,) = _get_struct_2f3bf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.ray_cast.raycast.tostring())
      _x = self.state_machine.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f3bf().pack(_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ray_cast is None:
        self.ray_cast = planning.msg.Ray_cast()
      if self.state_machine is None:
        self.state_machine = planning.msg.State_machine()
      if self.car_info is None:
        self.car_info = planning.msg.Car_info()
      end = 0
      start = end
      end += 480
      self.ray_cast.raycast = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=120)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_machine.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_machine.state = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level,) = _get_struct_2f3bf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_120f = None
def _get_struct_120f():
    global _struct_120f
    if _struct_120f is None:
        _struct_120f = struct.Struct("<120f")
    return _struct_120f
_struct_2f3bf = None
def _get_struct_2f3bf():
    global _struct_2f3bf
    if _struct_2f3bf is None:
        _struct_2f3bf = struct.Struct("<2f3bf")
    return _struct_2f3bf
