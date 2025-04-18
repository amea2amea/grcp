#!/bin/bash
# 1行目の#!は、#(hash:ハッシュ/sharp:シャープ)と!(bang:バン)の短縮系で一般的にはshebang:シェバンと呼ばれる
# スクリプトを読み込むパスの指定である

### 手動でCMakeのビルドを行う方法 ###
# [コマンド]
# -SがCMakeLists.txtの場所を指定
# -Bがビルドディレクトリの場所を指定(ディレクトリがなければ自動で作成される)
# cmake <ソースディレクトリ>
# cmake --build <ビルドディレクトリ>

# [ビルド方法]
# -S .      : 現在のディレクトリにある CMakeLists.txt をソースとして使う、
# -B build  : ビルド用の中間ファイルやMakefileは build/ に作るbuildをビルドするディレクトリに指定
# cmake -S . -B build
# build内でビルドを実行
# cmake --build build

### 手動で実行コマンドを行う方法 ###
# デバッグ :  ./app/server/server.sh
# リリース :  ./app/server/server.sh release

#### シェルの設定 ####
# -x : コマンドの実行時、コマンドと引数の内容を表示を表示
# -u : 未定義の変数を使おうとしたときに打ち止め
# -e : コマンドに失敗した時点でシェルスクリプトの実行を停止
set -xue

# 引数を取得（デフォルトは Debug）
BUILD_TYPE="${1:-Debug}"
BUILD_TYPE=$(echo "$BUILD_TYPE" | tr '[:upper:]' '[:lower:]')
if [[ "$BUILD_TYPE" == "release" ]]; then
  BUILD_TYPE="Release"
else
  BUILD_TYPE="Debug"
fi

# 各種定義
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$SCRIPT_DIR/../../bin"
BUILD_DIR="$SCRIPT_DIR/../../build/server"
DEBUG_BIN_DIR="$BIN_DIR/Debug"
RELEASE_BIN_DIR="$BIN_DIR/Release"

# build/binディレクトリの削除と生成
rm -rf "$BUILD_DIR"
mkdir -p "$BIN_DIR"
mkdir -p "$BUILD_DIR"

# [CMakeのビルド方法]
# -Sがソースディクトリの指定
# -Bがビルドディレクトリの指定
cmake -S "$SCRIPT_DIR" -B "$BUILD_DIR" \
  -DCMAKE_BUILD_TYPE="$BUILD_TYPE" \
  -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="$RELEASE_BIN_DIR"
cmake --build "$BUILD_DIR"

# 実行
"$BIN_DIR/$BUILD_TYPE/server"
 