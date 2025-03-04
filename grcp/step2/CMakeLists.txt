# CMakeのバージョンを設定
cmake_minimum_required(VERSION 3.31)
# プロジェクト名と使用する言語を設定
project(grpc_example CXX)
# vcpkg の CMake ツールチェインを使用
set(CMAKE_TOOLCHAIN_FILE "$ENV{HOME}/Documents/software/development/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
# gRPC のインストールパスを追加
set(CMAKE_PREFIX_PATH "$ENV{HOME}/Documents/software/development/vcpkg/installed/arm64-osx/share")
# 実行ファイルの出力先を設定
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)
# サブディレクトリを登録
add_subdirectory(src)

# [ビルド方法1]
# -Sがソースディクトリの指定
# -Bがビルドディレクトリの指定
# cmake -S . -B build
# 先ほど指定したビルドディレクトリ（build）内でビルドを実行
# cmake --build build

# [ビルド方法2]
# .. は ソースディレクトリの指定
# cmake ..
# . は ビルドディレクトリの指定
# cmake --build .

