// インクルード
#include <iostream>
#include <memory>
#include <string>
#include <grpcpp/grpcpp.h>
#include "grpc_service_data.grpc.pb.h"
#include "data_type.h"

int main()
{
  // サーバーアドレス
  std::string server_address = "localhost:50051";
  // 要求するデータの種別
  std::string type = "POSITION";
  // チャンネル作成
  auto channel = grpc::CreateChannel(server_address, grpc::InsecureChannelCredentials());
  if (!channel)
  {
    std::cerr << "Channel creation failed." << std::endl;
    return 1;
  }
  // 代理のクライアントを作成
  std::shared_ptr<grpc_service_data::GrpcService::Stub> stub = grpc_service_data::GrpcService::NewStub(channel);
  if (!stub)
  {
    std::cerr << "Stub creation failed." << std::endl;
    return 1;
  }
  // リクエスト作成
  grpc_service_data::ServiceDataRequest request;
  request.set_type(type);
  grpc_service_data::ServiceDataResponse response;
  grpc::ClientContext context;
  // サーバーから取得
  std::cout << "Calling GetData...\n";
  grpc::Status status = stub->GetData(&context, request, &response);
  std::cout << "Call finished\n";
  return 0;
}
