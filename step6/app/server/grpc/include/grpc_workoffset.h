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
        : grpc_data_(data, [](grpc_types::Response &response, grpc_types::GrpcValuePtr value)
                     {
                         if (value) // nullptrチェック
                         {
                            grpc_types::GrpcValue *grpc_value = response.mutable_data();
                            grpc_value->insert(value->begin(), value->end());
                         } })
    {
    }

    grpc_types::GrpcValuePtr GetData() const override
    {
        return grpc_data_.GetData();
    }

    grpc_types::Response ToGrpcResponse() const override
    {
        return grpc_data_.ToGrpcResponse();
    }
};

#endif // GRPC_WORKOFFSET_Hd