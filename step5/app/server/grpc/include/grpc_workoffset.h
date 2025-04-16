#ifndef GRPC_WORKOFFSET_H
#define GRPC_WORKOFFSET_H

// インクルード
#include "grpc_interface.h"

/**
 * @brief ワークオフセット情報
 * @note grpcのインターフェイスクラスを継承したもの
 */
class WorkoffsetGrpcData : public IGrpcData
{
private:
    GrpcDataImp grpc_data_;

public:
    explicit WorkoffsetGrpcData(std::shared_ptr<IServiceData> data)
        : grpc_data_(data, [](grpc_service_data::ServiceDataResponse &response, std::shared_ptr<grpc_service_data::GrpcValue> value)
                     {
                         if (value) // nullptrチェック
                         {
                             grpc_service_data::GrpcValue *grpc_value = response.mutable_workoffset_data();
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

#endif // GRPC_WORKOFFSET_Hd