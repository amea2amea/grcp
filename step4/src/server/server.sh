#!/bin/bash
# 1行目の#!は、#(hash:ハッシュ/sharp:シャープ)と!(bang:バン)の短縮系で一般的にはshebang:シェバンと呼ばれる
# スクリプトを読み込むパスの指定である

### 実行コマンド ###
# ./server.sh

#### シェルの設定 ####
# -x : コマンドの実行時、コマンドと引数の内容を表示を表示
# -u : 未定義の変数を使おうとしたときに打ち止め
# -e : コマンドに失敗した時点でシェルスクリプトの実行を停止
set -xue

# 各種定義
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$SCRIPT_DIR/../../bin"
BUILD_DIR="$SCRIPT_DIR/../../build/server"

# buildディレクトリの削除と生成
rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR"

# [CMakeのビルド方法]
# -Sがソースディクトリの指定
# -Bがビルドディレクトリの指定
cmake -S "$SCRIPT_DIR" -B "$BUILD_DIR"
# 先ほど指定したビルドディレクトリ（build）内でビルドを実行
cmake --build "$BUILD_DIR"

# モジュールの実行
"$BIN_DIR/server"

### CMakeのビルド方法 ###
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