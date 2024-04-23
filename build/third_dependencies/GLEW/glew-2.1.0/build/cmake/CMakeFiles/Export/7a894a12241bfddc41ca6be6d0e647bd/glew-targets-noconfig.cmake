#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GLEW::glew" for configuration ""
set_property(TARGET GLEW::glew APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(GLEW::glew PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libGLEW.2.1.0.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libGLEW.2.1.dylib"
  )

list(APPEND _cmake_import_check_targets GLEW::glew )
list(APPEND _cmake_import_check_files_for_GLEW::glew "${_IMPORT_PREFIX}/lib/libGLEW.2.1.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)