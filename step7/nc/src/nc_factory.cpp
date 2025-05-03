// インクルード
#include "nc_factory.h"
#include "nc_position.h"
#include "nc_workoffset.h"

/**
 * @brief ファクトリー
 */
std::shared_ptr<INcData> NcDataFactory::GetNcData(DataType::Type type)
{
    switch (type)
    {
    case DataType::Type::POSITION:
        return std::make_shared<PositionNcData>(10, 20, 30, 1);
    case DataType::Type::WORKOFFSET:
        return std::make_shared<WorkoffsetNcData>(1, 2, 3, 1);
    default:
        return nullptr;
    }
    return nullptr;
}
