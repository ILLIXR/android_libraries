#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "yaml-cpp::yaml-cpp_android" for configuration "Release"
set_property(TARGET yaml-cpp::yaml-cpp_android APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(yaml-cpp::yaml-cpp_android PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/x86/libyaml-cpp_android.so"
  IMPORTED_SONAME_RELEASE "libyaml-cpp_android.so"
  )

list(APPEND _cmake_import_check_targets yaml-cpp::yaml-cpp_android )
list(APPEND _cmake_import_check_files_for_yaml-cpp::yaml-cpp_android "${_IMPORT_PREFIX}/x86/libyaml-cpp_android.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
