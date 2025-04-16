#ifndef GRPC_INTERFACE_H
#define GRPC_INTERFACE_H

// インクルード
#include <functional>
#include "grpc_service_data.pb.h"
#include "service_interface.h"

/**
 * @brief gRPCのインターフェイス (抽象クラス)
 */
class IGrpcData
{
public:
    virtual ~IGrpcData() = default;
    virtual std::shared_ptr<grpc_service_data::GrpcValue> GetData() const = 0;
    virtual grpc_service_data::ServiceDataResponse ToGrpcResponse() const = 0;
};

/**
 * @brief gRPCデータ変換の共通実装
 */
class GrpcDataImp : public IGrpcData
{
private:
    std::shared_ptr<IServiceData> data_;
    std::function<void(grpc_service_data::ServiceDataResponse &, std::shared_ptr<grpc_service_data::GrpcValue>)> function_;

public:
    GrpcDataImp(std::shared_ptr<IServiceData> service_data,
                std::function<void(grpc_service_data::ServiceDataResponse &service_data, std::shared_ptr<grpc_service_data::GrpcValue>)> function)
        : data_(service_data), function_(function) {}

    std::shared_ptr<grpc_service_data::GrpcValue> GetData() const override
    {
        auto grpc_value = std::make_shared<grpc_service_data::GrpcValue>();
        const auto &service_data = data_->GetData();
        for (const auto &[key, value] : service_data)
        {
            (*grpc_value->mutable_data())[key] = value;
        }
        return grpc_value;
    }

    grpc_service_data::ServiceDataResponse ToGrpcResponse() const override
    {
        grpc_service_data::ServiceDataResponse response;
        auto grpc_value = GetData();
        function_(response, grpc_value);
        return response;
    }
};

#endif // GRPC_INTERFACE_H
