# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlecontrol: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iturtlecontrol:/home/gadget/FHWS_ROS/src/turtlecontrol/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlecontrol_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" NAME_WE)
add_custom_target(_turtlecontrol_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlecontrol" "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" ""
)

get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" NAME_WE)
add_custom_target(_turtlecontrol_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlecontrol" "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlecontrol
)

### Generating Services
_generate_srv_cpp(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlecontrol
)

### Generating Module File
_generate_module_cpp(turtlecontrol
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlecontrol
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlecontrol_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlecontrol_generate_messages turtlecontrol_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_cpp _turtlecontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_cpp _turtlecontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlecontrol_gencpp)
add_dependencies(turtlecontrol_gencpp turtlecontrol_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlecontrol_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlecontrol
)

### Generating Services
_generate_srv_eus(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlecontrol
)

### Generating Module File
_generate_module_eus(turtlecontrol
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlecontrol
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlecontrol_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlecontrol_generate_messages turtlecontrol_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_eus _turtlecontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_eus _turtlecontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlecontrol_geneus)
add_dependencies(turtlecontrol_geneus turtlecontrol_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlecontrol_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlecontrol
)

### Generating Services
_generate_srv_lisp(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlecontrol
)

### Generating Module File
_generate_module_lisp(turtlecontrol
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlecontrol
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlecontrol_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlecontrol_generate_messages turtlecontrol_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_lisp _turtlecontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_lisp _turtlecontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlecontrol_genlisp)
add_dependencies(turtlecontrol_genlisp turtlecontrol_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlecontrol_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlecontrol
)

### Generating Services
_generate_srv_nodejs(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlecontrol
)

### Generating Module File
_generate_module_nodejs(turtlecontrol
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlecontrol
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlecontrol_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlecontrol_generate_messages turtlecontrol_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_nodejs _turtlecontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_nodejs _turtlecontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlecontrol_gennodejs)
add_dependencies(turtlecontrol_gennodejs turtlecontrol_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlecontrol_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlecontrol
)

### Generating Services
_generate_srv_py(turtlecontrol
  "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlecontrol
)

### Generating Module File
_generate_module_py(turtlecontrol
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlecontrol
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlecontrol_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlecontrol_generate_messages turtlecontrol_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/msg/kofi.msg" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_py _turtlecontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gadget/FHWS_ROS/src/turtlecontrol/srv/circle_service.srv" NAME_WE)
add_dependencies(turtlecontrol_generate_messages_py _turtlecontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlecontrol_genpy)
add_dependencies(turtlecontrol_genpy turtlecontrol_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlecontrol_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlecontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlecontrol
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(turtlecontrol_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtlecontrol_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlecontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlecontrol
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(turtlecontrol_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtlecontrol_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlecontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlecontrol
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(turtlecontrol_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtlecontrol_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlecontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlecontrol
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(turtlecontrol_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtlecontrol_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlecontrol)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlecontrol\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlecontrol
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(turtlecontrol_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtlecontrol_generate_messages_py std_msgs_generate_messages_py)
endif()
