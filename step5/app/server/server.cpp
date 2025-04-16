// インクルード
#include <iostream>
#include "grpc_service.h"
#include "grpc_server.h"

/**
 * @brief メイン処理 (サーバー)
 */
int main()
{
  // gRPCサービスデータ生成
  auto grpc_service = std::make_shared<GrpcServiceImp>();
  // gRPCサーバーを起動
  std::string grpc_server_address = "0.0.0.0:50051";
  GrpcServer grpc_server(grpc_server_address, grpc_service);
  std::cout << "Starting gRPC server..." << std::endl;
  // gRPCサーバー動作中ß
  grpc_server.Run();
  return 0;
}
