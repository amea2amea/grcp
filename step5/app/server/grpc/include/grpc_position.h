#ifndef GRPC_POSITION_H
#define GRPC_POSITION_H

// インクルード
#include "grpc_interface.h"

/**
 * @brief ポジション情報
 * @note grpcのインターフェイスクラスを継承したもの
 */
class PositionGrpcData : public IGrpcData
{
private:
    GrpcDataImp grpc_data_;

public:
    explicit PositionGrpcData(std::shared_ptr<IServiceData> data)
        : grpc_data_(data, [](grpc_service_data::ServiceDataResponse &response, std::shared_ptr<grpc_service_data::GrpcValue> value)
                     {
                         if (value) // nullptr チェック
                         {
                             grpc_service_data::GrpcValue *grpc_value = response.mutable_position_data();
                             grpc_value->CopyFrom(*value);
                         } })
    {
    }

    std::shared_ptr<grpc_service_data::GrpcValue> GetData() const override
    {
        return grpc_data_.GetData();
    }

    grpc_service_data::ServiceDataResponse ToGrpcResponse() const override
    {
        return grpc_data_.ToGrpcResponse();
    }
};

#endif // GRPC_POSITION_H