#ifndef SERVICE_INTERFACE_H
#define SERVICE_INTERFACE_H

// インクルード
#include "nc_interface.h"

/**
 * @brief サービスのインターフェイス (抽象クラス)
 */
class IServiceData
{
public:
    virtual ~IServiceData() = default;
    virtual std::unordered_map<std::string, std::string> GetData() const = 0;
};

/**
 * @brief サービスデータの共通実装
 */
class ServiceDataImp : public IServiceData
{
private:
    std::unordered_map<std::string, std::string> data_;

public:
    explicit ServiceDataImp(std::shared_ptr<const INcData> nc_data)
    {
        for (const auto &item : nc_data->GetData())
        {
            data_[item.first] = item.second->ToString();
        }
    }

    std::unordered_map<std::string, std::string> GetData() const override
    {
        return data_;
    }
};

#endif // SERVICE_INTERFACE_H
