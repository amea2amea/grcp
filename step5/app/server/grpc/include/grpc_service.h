#ifndef GRPC_SERVICE_H
#define GRPC_SERVICE_H

// インクルード
#include <grpcpp/grpcpp.h>
#include "grpc_service_data.grpc.pb.h"

/**
 * @brief grpサービスクラス
 */
class GrpcServiceImp : public grpc_service_data::GrpcService::Service
{
public:
    GrpcServiceImp();
    ~GrpcServiceImp();

public:
    grpc::Status GetData(grpc::ServerContext *, const grpc_service_data::ServiceDataRequest *, grpc_service_data::ServiceDataResponse *) override;
};

#endif // GRPC_SERVICE_H
