# - Config file for the yaml-cpp_android package
# It defines the following variables
#  YAML_CPP_INCLUDE_DIR       - include directory
#  YAML_CPP_LIBRARY_DIR       - directory containing libraries
#  YAML_CPP_SHARED_LIBS_BUILT - whether we have built shared libraries or not
#  YAML_CPP_LIBRARIES         - libraries to link against


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was yaml-cpp_android-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set_and_check(YAML_CPP_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(YAML_CPP_LIBRARY_DIR "${PACKAGE_PREFIX_DIR}/lib/x86")

# Are we building shared libraries?
set(YAML_CPP_SHARED_LIBS_BUILT "${PACKAGE_PREFIX_DIR}/ON")

# Our library dependencies (contains definitions for IMPORTED targets)
include(${PACKAGE_PREFIX_DIR}/lib/x86/cmake/yaml-cpp_android/yaml-cpp_android-targets.cmake)

# These are IMPORTED targets created by yaml-cpp_android-targets.cmake
set(YAML_CPP_LIBRARIES "yaml-cpp_android")

check_required_components(yaml-cpp_android)
