#ifndef POSITION_SERVICE_H
#define POSITION_SERVICE_H

// インクルード
#include "service_interface.h"

/**
 * @brief ポジション情報
 * @note サービスデータのインターフェイスクラスを継承したもの
 */
class PositionServiceData : public IServiceData
{
private:
    std::shared_ptr<ServiceDataImp> data_;

public:
    explicit PositionServiceData(std::shared_ptr<const INcData> nc_data)
        : data_(std::make_shared<ServiceDataImp>(nc_data)) {}

    std::unordered_map<std::string, std::string> GetData() const override
    {
        return data_->GetData();
    }
};

#endif // POSITION_SERVICE_H