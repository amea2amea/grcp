cmake_minimum_required(VERSION 3.16)
project(grpc_example CXX)

# vcpkg を使う場合の CMake 設定
set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")

# gRPC と Protobuf を探す
find_package(gRPC CONFIG REQUIRED)
find_package(Protobuf CONFIG REQUIRED)

# gRPC コード生成の設定
set(PROTO_FILES message_service.proto)
protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS ${PROTO_FILES})
grpc_generate_cpp(GRPC_SRCS GRPC_HDRS ${PROTO_FILES})

# ソースファイルの設定
set(SERVER_SRC message_service_server.cpp ${PROTO_SRCS} ${GRPC_SRCS})
set(CLIENT_SRC message_service_client.cpp ${PROTO_SRCS} ${GRPC_SRCS})

# サーバーのビルド
add_executable(server ${SERVER_SRC})
target_link_libraries(server gRPC::grpc++ protobuf::libprotobuf)

# クライアントのビルド
add_executable(client ${CLIENT_SRC})
target_link_libraries(client gRPC::grpc++ protobuf::libprotobuf)