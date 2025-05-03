# CMakeのバージョンを設定
cmake_minimum_required(VERSION 3.31)

# macOS のターゲットバージョンを指定
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.1" CACHE STRING "macOS deployment target version")

# プロジェクト名と使用する言語を設定
project(service CXX)

#
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Debug/Releaseの指定
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g3 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

# ビルドディレクトリの出力設定
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/../../../lib/${CMAKE_BUILD_TYPE})

# ビルドタイプを表示
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")

# macOS のターゲットバージョンを指定
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.1" CACHE STRING "macOS deployment target version")

# vcpkg の CMake ツールチェインを使用
set(CMAKE_TOOLCHAIN_FILE "$ENV{HOME}/Documents/software/development/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")

# ソース収集
file(GLOB_RECURSE SERVICE_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

# 実行ファイルの設定
add_library(service STATIC ${SERVICE_SRCS})

# ターゲットにインクルードパスを適用
target_include_directories(service PRIVATE
    # ビジネスロジック固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    # サーバ固有関連
    ${CMAKE_CURRENT_SOURCE_DIR}/../include
    # 全体の共通インターフェース
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../include
)
