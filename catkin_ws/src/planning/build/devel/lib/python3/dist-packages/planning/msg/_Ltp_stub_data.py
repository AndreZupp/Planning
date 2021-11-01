# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planning/Ltp_stub_data.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import planning.msg

class Ltp_stub_data(genpy.Message):
  _md5sum = "48f255fc4f3be5fabaaa233ba03e6166"
  _type = "planning/Ltp_stub_data"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Car_info car_info
Track_map map
State_machine state_machine
Car_position car_position
================================================================================
MSG: planning/Car_info
float32 speed 
float32 angle
int8 cpu_temperature
int8 engine_temperature
int8 brake_temperature
float32 fuel_level
================================================================================
MSG: planning/Track_map
uint8[] track_map
================================================================================
MSG: planning/State_machine
string state
================================================================================
MSG: planning/Car_position
uint32 car_position_x
uint32 car_position_y"""
  __slots__ = ['car_info','map','state_machine','car_position']
  _slot_types = ['planning/Car_info','planning/Track_map','planning/State_machine','planning/Car_position']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       car_info,map,state_machine,car_position

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Ltp_stub_data, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.car_info is None:
        self.car_info = planning.msg.Car_info()
      if self.map is None:
        self.map = planning.msg.Track_map()
      if self.state_machine is None:
        self.state_machine = planning.msg.State_machine()
      if self.car_position is None:
        self.car_position = planning.msg.Car_position()
    else:
      self.car_info = planning.msg.Car_info()
      self.map = planning.msg.Track_map()
      self.state_machine = planning.msg.State_machine()
      self.car_position = planning.msg.Car_position()

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
      _x = self
      buff.write(_get_struct_2f3bf().pack(_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level))
      _x = self.map.track_map
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_machine.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.car_position.car_position_x, _x.car_position.car_position_y))
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
      if self.car_info is None:
        self.car_info = planning.msg.Car_info()
      if self.map is None:
        self.map = planning.msg.Track_map()
      if self.state_machine is None:
        self.state_machine = planning.msg.State_machine()
      if self.car_position is None:
        self.car_position = planning.msg.Car_position()
      end = 0
      _x = self
      start = end
      end += 15
      (_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level,) = _get_struct_2f3bf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.map.track_map = str[start:end]
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
      end += 8
      (_x.car_position.car_position_x, _x.car_position.car_position_y,) = _get_struct_2I().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_2f3bf().pack(_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level))
      _x = self.map.track_map
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_machine.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.car_position.car_position_x, _x.car_position.car_position_y))
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
      if self.car_info is None:
        self.car_info = planning.msg.Car_info()
      if self.map is None:
        self.map = planning.msg.Track_map()
      if self.state_machine is None:
        self.state_machine = planning.msg.State_machine()
      if self.car_position is None:
        self.car_position = planning.msg.Car_position()
      end = 0
      _x = self
      start = end
      end += 15
      (_x.car_info.speed, _x.car_info.angle, _x.car_info.cpu_temperature, _x.car_info.engine_temperature, _x.car_info.brake_temperature, _x.car_info.fuel_level,) = _get_struct_2f3bf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.map.track_map = str[start:end]
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
      end += 8
      (_x.car_position.car_position_x, _x.car_position.car_position_y,) = _get_struct_2I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2f3bf = None
def _get_struct_2f3bf():
    global _struct_2f3bf
    if _struct_2f3bf is None:
        _struct_2f3bf = struct.Struct("<2f3bf")
    return _struct_2f3bf