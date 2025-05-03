# CMakeのバージョンを設定
cmake_minimum_required(VERSION 3.31)

# macOS のターゲットバージョンを指定
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.1" CACHE STRING "macOS deployment target version")

# プロジェクト名と使用する言語を設定
project(grpc_server CXX)

#
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Debug/Releaseの指定
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g3 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

# ビルドディレクトリの出力設定
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/../../../lib/${CMAKE_BUILD_TYPE})

# ライブラリのディレクトリ設定
set(LIB_DIR "${CMAKE_SOURCE_DIR}/../../../lib/${CMAKE_BUILD_TYPE}")

# ビルドタイプを表示
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")

# vcpkg の CMake ツールチェインを使用
set(CMAKE_TOOLCHAIN_FILE "$ENV{HOME}/Documents/software/development/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")

# gRPC のインストールパスを追加
set(CMAKE_PREFIX_PATH "$ENV{HOME}/Documents/software/development/vcpkg/installed/arm64-osx/share")

# 必要なパッケージを探す
find_package(gRPC CONFIG REQUIRED)
find_package(Protobuf CONFIG REQUIRED)
find_package(GTest CONFIG REQUIRED)

# ソース収集
file(GLOB_RECURSE GRPC_SERVER_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/../../include/proto/*.cc
)

# 実行ファイルの設定
add_library(grpc_server STATIC ${GRPC_SERVER_SRCS})

# ターゲットにインクルードパスを適用
target_include_directories(grpc_server PRIVATE
    # gRPC固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    # サーバ固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/../include
    # 全体の共通インターフェース
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../include
    # アプリケーション層関連
    ${CMAKE_CURRENT_SOURCE_DIR}/../../include
    # アプリケーション層のgRPC自動生成コード
    ${CMAKE_CURRENT_SOURCE_DIR}/../../include/proto
)

# リンク
target_link_libraries(grpc_server PRIVATE
    gRPC::grpc++
    gRPC::grpc++_reflection
    protobuf::libprotobuf
    protobuf::libprotoc
    ${LIB_DIR}/libservice.a
    ${LIB_DIR}/libnc.a
)
