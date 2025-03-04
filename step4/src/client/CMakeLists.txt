# CMakeのバージョンを設定
cmake_minimum_required(VERSION 3.31)
# プロジェクト名と使用する言語を設定
project(grpc_example CXX)
# macOS のターゲットバージョンを指定
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.1" CACHE STRING "macOS deployment target version")
# vcpkg の CMake ツールチェインを使用
set(CMAKE_TOOLCHAIN_FILE "$ENV{HOME}/Documents/software/development/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
# gRPC のインストールパスを追加
set(CMAKE_PREFIX_PATH "$ENV{HOME}/Documents/software/development/vcpkg/installed/arm64-osx/share")
# 実行ファイルの出力先を設定
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../bin)
# 必要なパッケージを探す
find_package(gRPC CONFIG REQUIRED)
find_package(Protobuf CONFIG REQUIRED)
# 生成された .cc ファイルだけを対象にする
file(GLOB PROTO_SRCS ${CMAKE_SOURCE_DIR}/../../include/proto/*.cc)
# 実行ファイルの設定
add_executable(client client.cpp ${PROTO_SRCS})
# インクルードディレクトリを追加
target_include_directories(client PRIVATE ${CMAKE_SOURCE_DIR}/../../include/proto)
# リンク
target_link_libraries(client PRIVATE gRPC::grpc++ protobuf::libprotobuf)