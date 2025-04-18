# CMakeのバージョンを設定
cmake_minimum_required(VERSION 3.31)

# プロジェクト名と使用する言語を設定
project(grpc_example CXX)

# Debug/Releaseの指定
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g3 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

# ビルドタイプを表示
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")

# ビルドディレクトリの出力設定
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../bin/${CMAKE_BUILD_TYPE})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/../../lib/${CMAKE_BUILD_TYPE})

# macOS のターゲットバージョンを指定
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.1" CACHE STRING "macOS deployment target version")

# vcpkg の CMake ツールチェインを使用
set(CMAKE_TOOLCHAIN_FILE "$ENV{HOME}/Documents/software/development/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")

# gRPC のインストールパスを追加
set(CMAKE_PREFIX_PATH "$ENV{HOME}/Documents/software/development/vcpkg/installed/arm64-osx/share")

# 必要なパッケージを探す
find_package(gRPC CONFIG REQUIRED)
find_package(Protobuf CONFIG REQUIRED)

# ソース収集
file(GLOB_RECURSE SERVER_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/grpc/src/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/services/src/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/../include/proto/*.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/../../nc/src/*.cpp
)

# .proto 生成コード
file(GLOB PROTO_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/../../include/proto/*.cc)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../../include/proto)

# 実行ファイルの設定
add_executable(server ${SERVER_SRCS} ${PROTO_SRCS})

# ターゲットにインクルードパスを適用
target_include_directories(server PRIVATE
    # gRPC固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/grpc/include
    # ビジネスロジック固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/services/include
    # サーバ固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    # NC層固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/../../nc/include
    # 全体の共通インターフェース
    ${CMAKE_CURRENT_SOURCE_DIR}/../../include
    # アプリケーション層関連
    ${CMAKE_CURRENT_SOURCE_DIR}/../include
    # アプリケーション層のgRPC自動生成コード
    ${CMAKE_CURRENT_SOURCE_DIR}/../include/proto
)

# リンク
target_link_libraries(server PRIVATE
    gRPC::grpc++
    gRPC::grpc++_reflection
    protobuf::libprotobuf
    protobuf::libprotoc
)
