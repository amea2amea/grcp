// インクルード
#include "grpc_factory.h"
#include "grpc_position.h"
#include "grpc_workoffset.h"

/**
 * @brief ファクトリー
 */
std::shared_ptr<IGrpcData> GrpcDataFactory::CreateGrpcData(DataType::Type type, std::shared_ptr<IServiceData> service_data)
{
    // oneofにデータを設定
    switch (type)
    {
    case DataType::Type::POSITION:
        return std::make_shared<PositionGrpcData>(service_data);
        break;
    case DataType::Type::WORKOFFSET:
        return std::make_shared<WorkoffsetGrpcData>(service_data);
        break;
    default:
        return nullptr;
        break;
    }
    return nullptr;
}