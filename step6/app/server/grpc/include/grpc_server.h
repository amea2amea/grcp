#ifndef GRPC_SERVER_H
#define GRPC_SERVER_H

// インクルード
#include <grpcpp/grpcpp.h>
#include "grpc_service.h"

/**
 * @brief grpcサーバークラス
 */
class GrpcServer
{
public:
    GrpcServer(const std::string &, std::shared_ptr<GrpcServiceImp>);
    ~GrpcServer();
    void Run();

private:
    std::string server_address_;
    std::shared_ptr<grpc::Server> server_;
    std::shared_ptr<GrpcServiceImp> grpc_service_;
};

#endif // GRPC_SERVER_H