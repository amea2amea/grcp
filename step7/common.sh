#!/bin/bash
# 1行目の#!は、#(hash:ハッシュ/sharp:シャープ)と!(bang:バン)の短縮系で一般的にはshebang:シェバンと呼ばれる
# スクリプトを読み込むパスの指定である

#### シェルの設定 ####
# -x : コマンドの実行時、コマンドと引数の内容を表示を表示
# -u : 未定義の変数を使おうとしたときに打ち止め
# -e : コマンドに失敗した時点でシェルスクリプトの実行を停止
# -o pipefail :パイプラインの失敗検出
set -euo pipefail

# Release/Debug処理
BUILD_TYPE="$(echo "$BUILD_TYPE" | tr '[:lower:]' '[:upper:]')"
if [[ "$BUILD_TYPE" != "RELEASE" ]]; then
  BUILD_TYPE="Debug"
else
  BUILD_TYPE="Release"
fi

# buildディレクトリを削除
if [[ "$BUILD_MODE" == "rebuild" ]]; then
  rm -rf "$BUILD_DIR"
fi

# 各種ディレクトリを生成
mkdir -p "$BUILD_DIR" "$BIN_DIR" "$LIB_DIR"

# 出力
export BUILD_TYPE BUILD_DIR BIN_DIR LIB_DIR
