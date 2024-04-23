# 设置 CMake 的最低版本要求
cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(MyProject VERSION 1.0)

# 设置输出目录
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# C++ 标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 如果需要生成 GLFW 的动态库，则设置 BUILD_SHARED_LIBS 为 ON,传递性
option(BUILD_SHARED_LIBS "Build shared libraries" ON)

# 添加GLFW为子模块，会自动运行子模块的脚本
add_subdirectory(./third_dependencies/GLFW/glfw-3.4)

# 添加GLEW为子模块
add_subdirectory(./third_dependencies/GLEW/glew-2.1.0/build/cmake)

# 添加 GLFW 包含目录
include_directories(./third_dependencies/GLFW/glfw-3.4/include)

# 添加 GLEW 包含目录
include_directories(./third_dependencies/GLEW/glew-2.1.0/include)

# 添加源文件
file(GLOB source CONFIGURE_DEPENDS ./src/*.cpp ./src/*.h)

# 程序入口
add_executable(MyApp ${source})

# 链接 GLFW 和其他可能的依赖
target_link_libraries(MyApp glfw glew)
