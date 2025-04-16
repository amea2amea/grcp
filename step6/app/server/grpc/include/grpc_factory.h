#ifndef GRPC_FACTORY_H
#define GRPC_FACTORY_H

// インクルード
#include "data_type.h"
#include "grpc_interface.h"

/**
 * @brief ファクトリー
 */
class GrpcDataFactory
{
public:
    static std::shared_ptr<IGrpcData> CreateGrpcData(DataType::Type, std::shared_ptr<IServiceData>);
};

#endif // GRPC_FACTORY_H