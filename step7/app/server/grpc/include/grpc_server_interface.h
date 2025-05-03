#ifndef GRPC_INTERFACE_H
#define GRPC_INTERFACE_H

// インクルード
#include <functional>
#include "grpc_types.h"
#include "service_interface.h"

/**
 * @brief gRPCのインターフェイス (抽象クラス)
 */
class IGrpcData
{
public:
    virtual ~IGrpcData() = default;
    virtual grpc_types::GrpcValuePtr GetData() const = 0;
    virtual grpc_types::Response ToGrpcResponse() const = 0;
};

/**
 * @brief gRPCデータ変換の共通実装
 */
class GrpcDataImp : public IGrpcData
{
private:
    std::shared_ptr<IServiceData> data_;
    std::function<void(grpc_types::Response &, grpc_types::GrpcValuePtr)> function_;

public:
    GrpcDataImp(std::shared_ptr<IServiceData> service_data,
                std::function<void(grpc_types::Response &service_data, grpc_types::GrpcValuePtr)> function)
        : data_(service_data), function_(function) {}

    grpc_types::GrpcValuePtr GetData() const override
    {
        auto grpc_value = std::make_shared<grpc_types::GrpcValue>();
        const auto &service_data = data_->GetData();
        for (const auto &[key, value] : service_data)
        {
            (*grpc_value)[key] = value;
        }
        return grpc_value;
    }

    grpc_types::Response ToGrpcResponse() const override
    {
        grpc_types::Response response;
        auto grpc_value = GetData();
        function_(response, grpc_value);
        return response;
    }
};

#endif // GRPC_INTERFACE_H
