# 设置 CMake 的最低版本要求
cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(MyProject VERSION 1.0)

# C++ 标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 如果需要生成 GLFW 的动态库，则设置 BUILD_SHARED_LIBS 为 ON,传递性
option(BUILD_SHARED_LIBS "Build shared libraries" ON)

# 假设 GLFW 源码位于项目根目录下的 3rdlib/glfw 目录中，会自动运行子模块的脚本
add_subdirectory(../third_dependencies/GLFW/glfw-3.4 ../third_dependencies/GLFW/glfw-3.4/build)

# 添加包含目录
include_directories(../third_dependencies/GLFW/glfw-3.4/include)

# 添加源文件
file(GLOB source CONFIGURE_DEPENDS ../src/*.cpp ../src/*.h)

# 假设您有一个 main.cpp 作为您的应用程序入口
add_executable(MyApp ${source})

# 链接 GLFW 和其他可能的依赖
target_link_libraries(MyApp glfw)
