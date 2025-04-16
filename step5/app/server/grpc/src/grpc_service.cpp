// インクルード
#include "nc_factory.h"
#include "service_factory.h"
#include "grpc_factory.h"
#include "grpc_service.h"

/**
 * @brief コンストラクタ
 */
GrpcServiceImp::GrpcServiceImp()
{
}
/**
 * @brief デストラクタ
 */
GrpcServiceImp::~GrpcServiceImp()
{
}
/**
 * @brief grpcサービスデータ取得
 */
grpc::Status GrpcServiceImp::GetData(grpc::ServerContext *context, const grpc_service_data::ServiceDataRequest *request, grpc_service_data::ServiceDataResponse *response)
{
    // データタイプを取得
    std::string str = request->type();
    DataType::Type type = DataType::FromString(str).GetType();
    // NCデータを取得
    auto nc_data = NcDataFactory::GetNcData(type);
    // サービスデータを生成
    auto service_data = ServiceDataFactory::GetServiceData(type, nc_data);
    // gRPCサービス生成
    auto grpc_data = GrpcDataFactory::CreateGrpcData(type, service_data);
    *response = grpc_data->ToGrpcResponse();
    return grpc::Status::OK;
}
