cmake_minimum_required(VERSION 3.24)
project(AITradingPlatform LANGUAGES CXX)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Server (Drogon backend)
add_subdirectory(server)


