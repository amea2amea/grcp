// インクルード
#include "grpc_types.h"

int main(int argc, char **argv)
{
  // サーバーアドレス
  std::string server_address = "localhost:50051";

  // チャンネル作成
  auto channel = grpc::CreateChannel(server_address, grpc::InsecureChannelCredentials());
  if (!channel)
  {
    std::cerr << "Channel creation failed." << std::endl;
    return 1;
  }

  // 代理のクライアントを作成
  grpc_types::StubPtr stub = grpc_types::GrpcService::NewStub(channel);
  if (!stub)
  {
    std::cerr << "Stub creation failed." << std::endl;
    return 1;
  }

  while (true)
  {
    // データを取得する種別を入力
    std::string type;
    std::cout << "Enter data type to request (e.g. POSITION, WORKOFFSET, exit to quit): ";
    std::getline(std::cin, type);

    // exitで終了
    if (type == "exit")
      break;

    // リクエスト作成
    grpc_types::Request request;
    request.set_type(type);
    grpc_types::Response response;
    grpc_types::ClientContext context;

    // サーバーから取得
    grpc_types::Status status = stub->GetData(&context, request, &response);

    // 取得データの情報
    if (status.ok())
    {
      std::cout << "\n=== gRPC call succeeded ===" << std::endl;
      std::cout << "Type: " << request.type() << std::endl;
      const auto &data_map = response.data();
      for (const auto &pair : data_map)
      {
        std::cout << pair.first << " : " << pair.second << std::endl;
      }
      std::cout << "===========================\n"
                << std::endl;
    }
    else
    {
      std::cerr << "gRPC call failed: " << status.error_code()
                << " - " << status.error_message() << std::endl;
    }
  }
  return 0;
}
