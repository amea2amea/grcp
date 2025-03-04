# CMakeのバージョンを設定
cmake_minimum_required(VERSION 3.31)
# プロジェクト名と使用する言語を設定
project(grpc_example CXX)
# vcpkg の CMake ツールチェインを使用
set(CMAKE_TOOLCHAIN_FILE "$ENV{HOME}/Documents/software/development/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
# gRPC のインストールパスを追加
set(CMAKE_PREFIX_PATH "$ENV{HOME}/Documents/software/development/vcpkg/installed/arm64-osx/share")
# 実行ファイルの出力先を設定
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../bin)
# 必要なパッケージを探す
find_package(gRPC CONFIG REQUIRED)
find_package(Protobuf CONFIG REQUIRED)
# 実行ファイルの作成
add_executable(client client.cpp)
# リンク
target_link_libraries(client PRIVATE gRPC::grpc++ protobuf::libprotobuf)