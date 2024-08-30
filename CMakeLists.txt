# 设置 CMake 的最低版本要求
cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(MyProject VERSION 1.0)

# 设置输出目录
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_BUILD_TYPE Debug)
# 对于所有编译器
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
# 对于特定的编译器，例如 GCC 或 Clang
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g -O0")

# C++ 标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 如果需要生成 GLFW 的动态库，则设置 BUILD_SHARED_LIBS 为 ON,传递性
option(BUILD_SHARED_LIBS "Build shared libraries" ON)
option(GLM_BUILD_LIBRARY "Build shared libraries" ON)

# 添加GLFW为子模块，会自动运行子模块的脚本
add_subdirectory(./third_dependencies/GLFW/glfw-3.4)

# 添加glm模块
add_subdirectory(./third_dependencies/glm)

# 添加soil模块
add_subdirectory(./third_dependencies/soil)

# 添加GLEW为子模块
# add_subdirectory(./third_dependencies/GLEW/glew-2.1.0/build/cmake)

# 添加 GLFW 包含目录
include_directories(./third_dependencies/GLFW/glfw-3.4/include)

# 添加 GLEW 包含目录
# include_directories(./third_dependencies/GLEW/glew-2.1.0/include)

# 添加 glad 包含目录
include_directories(./third_dependencies/glad/include)

# 添加 glm 包含目录
include_directories(./third_dependencies/glm)

# 添加 soil 包含目录
include_directories(./third_dependencies/soil/inc)

# 添加源文件
file(GLOB source CONFIGURE_DEPENDS ./src/sky_box/*.cpp ./third_dependencies/glad/src/*.c ./src/*.h)

# 程序入口
add_executable(app ${source})

# 链接 GLFW 和其他可能的依赖
target_link_libraries(app glfw soil glm "-framework CoreFoundation")
