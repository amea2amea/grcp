// インクルード
#include <iostream>
#include "service_entry.h"
#include "grpc_server_entry.h"

/**
 * @brief メイン処理 (サーバー)
 */
int main(int argc, char **argv)
{
  std::string server_address = "0.0.0.0:50051";
  auto server = GrpcServerEntry::GetGrpcServerEntry(server_address);
  std::cout << "Starting gRPC server..." << std::endl;
  server->Run();
  return 0;
}
