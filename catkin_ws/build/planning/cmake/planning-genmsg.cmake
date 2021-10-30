# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "planning: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iplanning:/home/andreo/catkin_ws/src/planning/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(planning_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" ""
)

get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" ""
)

get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" ""
)

get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" ""
)

get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" "planning/Car_info:planning/Track_map:planning/State_machine"
)

get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" "planning/Car_info:planning/Ray_cast:planning/State_machine"
)

get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Command.msg" NAME_WE)
add_custom_target(_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning" "/home/andreo/catkin_ws/src/planning/msg/Command.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Track_map.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)
_generate_msg_cpp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
)

### Generating Services

### Generating Module File
_generate_module_cpp(planning
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(planning_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(planning_generate_messages planning_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Command.msg" NAME_WE)
add_dependencies(planning_generate_messages_cpp _planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_gencpp)
add_dependencies(planning_gencpp planning_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Track_map.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)
_generate_msg_eus(planning
  "/home/andreo/catkin_ws/src/planning/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
)

### Generating Services

### Generating Module File
_generate_module_eus(planning
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(planning_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(planning_generate_messages planning_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Command.msg" NAME_WE)
add_dependencies(planning_generate_messages_eus _planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_geneus)
add_dependencies(planning_geneus planning_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Track_map.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)
_generate_msg_lisp(planning
  "/home/andreo/catkin_ws/src/planning/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
)

### Generating Services

### Generating Module File
_generate_module_lisp(planning
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(planning_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(planning_generate_messages planning_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Command.msg" NAME_WE)
add_dependencies(planning_generate_messages_lisp _planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_genlisp)
add_dependencies(planning_genlisp planning_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Track_map.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)
_generate_msg_nodejs(planning
  "/home/andreo/catkin_ws/src/planning/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
)

### Generating Services

### Generating Module File
_generate_module_nodejs(planning
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(planning_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(planning_generate_messages planning_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Command.msg" NAME_WE)
add_dependencies(planning_generate_messages_nodejs _planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_gennodejs)
add_dependencies(planning_gennodejs planning_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Track_map.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg"
  "${MSG_I_FLAGS}"
  "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg;/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg;/home/andreo/catkin_ws/src/planning/msg/State_machine.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)
_generate_msg_py(planning
  "/home/andreo/catkin_ws/src/planning/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
)

### Generating Services

### Generating Module File
_generate_module_py(planning
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(planning_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(planning_generate_messages planning_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Car_info.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/State_machine.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ray_cast.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Track_map.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Ltp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Stp_stub_data.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andreo/catkin_ws/src/planning/msg/Command.msg" NAME_WE)
add_dependencies(planning_generate_messages_py _planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_genpy)
add_dependencies(planning_genpy planning_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(planning_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(planning_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(planning_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(planning_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(planning_generate_messages_py std_msgs_generate_messages_py)
endif()
