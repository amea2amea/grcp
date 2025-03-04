#include <grpcpp/grpcpp.h>
#include "helloworld.grpc.pb.h"

int main(int argc, char **argv)
{
  // サーバーのアドレス
  std::string server_address("localhost:50051");

  // gRPC チャンネルの作成
  std::shared_ptr<grpc::Channel> channel = grpc::CreateChannel(server_address, grpc::InsecureChannelCredentials());

  // サービススタブの作成
  std::unique_ptr<example::HelloService::Stub> stub = example::HelloService::NewStub(channel);

  // リクエストメッセージの作成
  example::HelloRequest request;
  request.set_name("World");

  // レスポンスメッセージの作成
  example::HelloResponse response;

  // コンテキストの作成
  grpc::ClientContext context;

  // RPC 呼び出し
  grpc::Status status = stub->SayHello(&context, request, &response);

  if (status.ok())
  {
    // レスポンスを表示
    std::cout << "Server response: " << response.message() << std::endl;
  }
  else
  {
    std::cerr << "RPC failed: " << status.error_message() << std::endl;
  }

  return 0;
}
