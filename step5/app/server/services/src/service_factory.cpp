// インクルード
#include "service_factory.h"
#include "position_service.h"
#include "workoffset_service.h"

/**
 * @brief ファクトリー
 */
std::shared_ptr<IServiceData> ServiceDataFactory::GetServiceData(DataType::Type type, std::shared_ptr<INcData> nc_data)
{
    switch (type)
    {
    case DataType::Type::POSITION:
        return std::make_shared<PositionServiceData>(nc_data);
    case DataType::Type::WORKOFFSET:
        return std::make_shared<WorkoffsetServiceData>(nc_data);
    default:
        return nullptr;
        break;
    }
    return nullptr;
}