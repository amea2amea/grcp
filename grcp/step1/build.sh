#!/bin/bash
# 1行目の#!は、#(hash:ハッシュ/sharp:シャープ)と!(bang:バン)の短縮系で一般的にはshebang:シェバンと呼ばれる
# スクリプトを読み込むパスの指定である

### 実行コマンド ###
# ./build.sh

#### シェルの設定 ####
# -x : コマンドの実行時、コマンドと引数の内容を表示を表示
# -u : 未定義の変数を使おうとしたときに打ち止め
# -e : コマンドに失敗した時点でシェルスクリプトの実行を停止
set -xue

# buildディレクトリの削除と生成
rm -rf build
mkdir build

# [CMakeのビルド方法]
# -Sがソースディクトリの指定
# -Bがビルドディレクトリの指定
cmake -S . -B build
# 先ほど指定したビルドディレクトリ（build）内でビルドを実行
cmake --build build

# モジュールの実行
./bin/main


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