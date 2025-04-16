// インクルード
#include "nc_factory.h"
#include "service_factory.h"
#include "grpc_types.h"
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
grpc_types::Status GrpcServiceImp::GetData(grpc_types::ServerContext *context, const grpc_types::Request *request, grpc_types::Response *response)
{
    // データタイプを取得
    DataType::Type type;
    std::string str = request->type();
    try
    {
        type = DataType::FromString(str).GetType();
    }
    catch (const std::invalid_argument &e)
    {
        std::cerr << "[gRPC Error] Invalid request type: " << str << " (" << e.what() << ")" << std::endl;
        return grpc_types::Status(grpc::StatusCode::INVALID_ARGUMENT, e.what());
    }
    // NCデータを取得
    auto nc_data = NcDataFactory::GetNcData(type);
    if (!nc_data)
    {
        std::cerr << "[Error] NcData not found for type: " << str << std::endl;
        return grpc_types::Status(grpc::StatusCode::NOT_FOUND, "NcData not found");
    }
    // サービスデータを生成
    auto service_data = ServiceDataFactory::GetServiceData(type, nc_data);
    if (!service_data)
    {
        std::cerr << "[Error] ServiceData not created for type: " << str << std::endl;
        return grpc_types::Status(grpc::StatusCode::INTERNAL, "ServiceData creation failed");
    }
    // gRPCサービス生成
    auto grpc_data = GrpcDataFactory::CreateGrpcData(type, service_data);
    if (!grpc_data)
    {
        std::cerr << "[Error] GrpcData not created for type: " << str << std::endl;
        return grpc_types::Status(grpc::StatusCode::INTERNAL, "GrpcData creation failed");
    }
    *response = grpc_data->ToGrpcResponse();
    // レスポンスデータを表示
    std::cout << "[GrpcServiceImp] Response type: " << request->type() << std::endl;
    const auto &map_data = response->data();
    std::cout << "[GrpcServiceImp] Response data:" << std::endl;
    for (const auto &entry : map_data)
    {
        std::cout << "  " << entry.first << " : " << entry.second << std::endl;
    }
    return grpc_types::Status::OK;
}
