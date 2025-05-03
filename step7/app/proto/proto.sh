#!/bin/bash
# 1行目の#!は、#(hash:ハッシュ/sharp:シャープ)と!(bang:バン)の短縮系で一般的にはshebang:シェバンと呼ばれる
# スクリプトを読み込むパスの指定である

### 実行コマンド ###
# ./proto.sh

#### シェルの設定 ####
# -x : コマンドの実行時、コマンドと引数の内容を表示を表示
# -u : 未定義の変数を使おうとしたときに打ち止め
# -e : コマンドに失敗した時点でシェルスクリプトの実行を停止
set -xue

# 各種定義
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROTO_DIR="$SCRIPT_DIR"
OUT_DIR="$SCRIPT_DIR/../include/proto"

# フォルダの設定
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

# パスの取得 (環境変数の設定が必要)
PROTOC="$(which protoc)"
GRPC_PLUGIN="$(which grpc_cpp_plugin)"

# .proto ファイルの検索
PROTO_FILES=$(find "$PROTO_DIR" -name "*.proto")
if [ -z "$PROTO_FILES" ]; then # .proto ファイルが存在しない場合のエラー処理
  echo "Error: No .proto files found in $PROTO_DIR"
  exit 1
fi

# protoc コマンドの実行（ヘッダーとソースをすべて include/proto に出力）
$PROTOC --proto_path="$PROTO_DIR" \
        --cpp_out="$OUT_DIR" \
        --grpc_out="$OUT_DIR" \
        --plugin=protoc-gen-grpc="$GRPC_PLUGIN" \
        $PROTO_FILES

# メッセージ
echo "Proto files generated successfully."