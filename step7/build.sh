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
NC_DIR="$SCRIPT_DIR/nc"
SERVER_DIR="$APP_DIR/server"
PROTO_DIR="$APP_DIR/proto"
GRPC_DIR="$SERVER_DIR/grpc"
SERVICES_DIR="$SERVER_DIR/services"

# Protoファイルのコード生成
"$PROTO_DIR/proto.sh"

# Ncファイルのコード生成
"$NC_DIR/nc.sh"

# Serviceファイルのコード生成
"$SERVICES_DIR/service.sh"

# Grpcファイルのコード生成
"$GRPC_DIR/grpc_server.sh"

# serverのソースコードをビルド
"$SERVER_DIR/server.sh"
