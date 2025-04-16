#!/bin/bash
# 1行目の#!は、#(hash:ハッシュ/sharp:シャープ)と!(bang:バン)の短縮系で一般的にはshebang:シェバンと呼ばれる
# スクリプトを読み込むパスの指定である

### 実行コマンド ###
# ./build.sh
# ./bin/client

#### シェルの設定 ####
# -x : コマンドの実行時、コマンドと引数の内容を表示を表示
# -u : 未定義の変数を使おうとしたときに打ち止め
# -e : コマンドに失敗した時点でシェルスクリプトの実行を停止
set -xue

# 各種定義
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="$SCRIPT_DIR/app"
PROTO_DIR="$APP_DIR/include/proto"
BIN_DIR="$SCRIPT_DIR/bin"
BUILD_DIR="$SCRIPT_DIR/build"

# binディレクトリの削除と生成
rm -rf "$BIN_DIR"
mkdir -p "$BIN_DIR"

# buildディレクトリの削除と生成
rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR"

# proto生成ファイルの削除
rm -rf "$PROTO_DIR"
mkdir "$PROTO_DIR"
