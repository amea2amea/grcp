# 必要なパッケージを探す
find_package(gRPC CONFIG REQUIRED)
find_package(Protobuf CONFIG REQUIRED)
# 実行ファイルの作成
add_executable(main main.cpp)
# リンク
target_link_libraries(main PRIVATE gRPC::grpc++ protobuf::libprotobuf)