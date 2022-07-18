# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rgbdslam: 0 messages, 4 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rgbdslam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" NAME_WE)
add_custom_target(_rgbdslam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbdslam" "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" ""
)

get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" NAME_WE)
add_custom_target(_rgbdslam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbdslam" "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" ""
)

get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" NAME_WE)
add_custom_target(_rgbdslam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbdslam" "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" ""
)

get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" NAME_WE)
add_custom_target(_rgbdslam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbdslam" "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam
)
_generate_srv_cpp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam
)
_generate_srv_cpp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam
)
_generate_srv_cpp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam
)

### Generating Module File
_generate_module_cpp(rgbdslam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rgbdslam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rgbdslam_generate_messages rgbdslam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_cpp _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_cpp _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_cpp _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_cpp _rgbdslam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbdslam_gencpp)
add_dependencies(rgbdslam_gencpp rgbdslam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbdslam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam
)
_generate_srv_eus(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam
)
_generate_srv_eus(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam
)
_generate_srv_eus(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam
)

### Generating Module File
_generate_module_eus(rgbdslam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rgbdslam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rgbdslam_generate_messages rgbdslam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_eus _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_eus _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_eus _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_eus _rgbdslam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbdslam_geneus)
add_dependencies(rgbdslam_geneus rgbdslam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbdslam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam
)
_generate_srv_lisp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam
)
_generate_srv_lisp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam
)
_generate_srv_lisp(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam
)

### Generating Module File
_generate_module_lisp(rgbdslam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rgbdslam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rgbdslam_generate_messages rgbdslam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_lisp _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_lisp _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_lisp _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_lisp _rgbdslam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbdslam_genlisp)
add_dependencies(rgbdslam_genlisp rgbdslam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbdslam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam
)
_generate_srv_nodejs(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam
)
_generate_srv_nodejs(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam
)
_generate_srv_nodejs(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam
)

### Generating Module File
_generate_module_nodejs(rgbdslam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rgbdslam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rgbdslam_generate_messages rgbdslam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_nodejs _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_nodejs _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_nodejs _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_nodejs _rgbdslam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbdslam_gennodejs)
add_dependencies(rgbdslam_gennodejs rgbdslam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbdslam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam
)
_generate_srv_py(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam
)
_generate_srv_py(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam
)
_generate_srv_py(rgbdslam
  "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam
)

### Generating Module File
_generate_module_py(rgbdslam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rgbdslam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rgbdslam_generate_messages rgbdslam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_b.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_py _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_py _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_f.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_py _rgbdslam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/test_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv" NAME_WE)
add_dependencies(rgbdslam_generate_messages_py _rgbdslam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbdslam_genpy)
add_dependencies(rgbdslam_genpy rgbdslam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbdslam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbdslam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbdslam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbdslam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbdslam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbdslam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
