#ifndef NC_FACTORY_H
#define NC_FACTORY_H

// インクルード
#include "data_type.h"
#include "nc_interface.h"

/**
 * @brief NC情報を取得するテンプレートファクトリークラス
 */
class NcDataFactory
{
public:
    static std::shared_ptr<INcData> GetNcData(DataType::Type);
};

#endif // NC_FACTORY_H