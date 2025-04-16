#include <grpcpp/grpcpp.h>
#include "helloworld.pb.h"
#include "helloworld.grpc.pb.h"

// サーバー側のサービス実装
class HelloServiceImpl final : public example::HelloService::Service
{
public:
  grpc::Status SayHello(grpc::ServerContext *context, const example::HelloRequest *request,
                        example::HelloResponse *response) override
  {
    // リクエストの受け取り
    std::string name = request->name();

    // レスポンスの設定
    response->set_message("Hello, " + name + "!");

    return grpc::Status::OK;
  }
};

// メイン関数
int main(int argc, char **argv)
{
  // サーバーアドレス
  std::string server_address("0.0.0.0:50051");

  // サーバーを作成
  HelloServiceImpl service;

  // gRPCサーバーを作成
  grpc::ServerBuilder builder;

  // サービスをサーバーに追加
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  builder.RegisterService(&service);

  // サーバーの開始
  std::unique_ptr<grpc::Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;

  // サーバーの実行
  server->Wait();

  return 0;
}
