#ifndef GRPC_SERVICE_H
#define GRPC_SERVICE_H

// インクルード
#include "grpc_types.h"

/**
 * @brief grpサービスクラス
 */
class GrpcServiceImp : public grpc_types::GrpcService::Service
{
public:
    GrpcServiceImp();
    ~GrpcServiceImp();

public:
    grpc_types::Status GetData(grpc_types::ServerContext *, const grpc_types::Request *, grpc_types::Response *) override;
};

#endif // GRPC_SERVICE_H
