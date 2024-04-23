# Install script for directory: /Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/joma/cpp_project/opengl_test/build/lib/libGLEW.2.1.0.dylib"
    "/Users/joma/cpp_project/opengl_test/build/lib/libGLEW.2.1.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGLEW.2.1.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGLEW.2.1.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/joma/cpp_project/opengl_test/build/lib/libGLEW.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/joma/cpp_project/opengl_test/build/bin/glewinfo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/glewinfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/glewinfo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/joma/cpp_project/opengl_test/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/glewinfo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/glewinfo")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/joma/cpp_project/opengl_test/build/third_dependencies/GLEW/glew-2.1.0/build/cmake/CMakeFiles/glewinfo.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/joma/cpp_project/opengl_test/build/bin/visualinfo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/visualinfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/visualinfo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/joma/cpp_project/opengl_test/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/visualinfo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/visualinfo")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/joma/cpp_project/opengl_test/build/third_dependencies/GLEW/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake/../../glew.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/GL" TYPE FILE FILES
    "/Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake/../../include/GL/wglew.h"
    "/Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake/../../include/GL/glew.h"
    "/Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake/../../include/GL/glxew.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/glew/glew-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/glew/glew-targets.cmake"
         "/Users/joma/cpp_project/opengl_test/build/third_dependencies/GLEW/glew-2.1.0/build/cmake/CMakeFiles/Export/7a894a12241bfddc41ca6be6d0e647bd/glew-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/glew/glew-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/glew/glew-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/glew" TYPE FILE FILES "/Users/joma/cpp_project/opengl_test/build/third_dependencies/GLEW/glew-2.1.0/build/cmake/CMakeFiles/Export/7a894a12241bfddc41ca6be6d0e647bd/glew-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/glew" TYPE FILE FILES "/Users/joma/cpp_project/opengl_test/build/third_dependencies/GLEW/glew-2.1.0/build/cmake/CMakeFiles/Export/7a894a12241bfddc41ca6be6d0e647bd/glew-targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/glew" TYPE FILE FILES
    "/Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake/glew-config.cmake"
    "/Users/joma/cpp_project/opengl_test/third_dependencies/GLEW/glew-2.1.0/build/cmake/CopyImportedTargetProperties.cmake"
    )
endif()

