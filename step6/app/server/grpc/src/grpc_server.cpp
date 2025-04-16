// インクルード
#include <iostream>
#include "grpc_server.h"

/**
 * @brief コンストラクタ
 */
GrpcServer::GrpcServer(const std::string &address, std::shared_ptr<GrpcServiceImp> grpc_service)
    : server_address_(address), grpc_service_(grpc_service)
{
}
/**
 * @brief デストラクタ
 */
GrpcServer::~GrpcServer()
{
    if (server_)
    {
        server_->Shutdown();
    }
}
/**
 * @brief サーバーメイン処理
 */
void GrpcServer::Run()
{
    // gRPCサーバーを設定
    grpc::ServerBuilder builder;
    builder.AddListeningPort(server_address_, grpc::InsecureServerCredentials());
    // gRPCサービスを登録
    builder.RegisterService(grpc_service_.get());
    // gRPCサービスを立ち上げ
    server_ = builder.BuildAndStart();
    if (!server_)
    {
        std::cerr << "Failed to start gRPC server!" << std::endl;
        return;
    }
    std::cout << "Server listening on " << server_address_ << std::endl;
    server_->Wait();
}