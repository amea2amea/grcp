#ifndef SERVICE_FACTORY_H
#define SERVICE_FACTORY_H

// インクルード
#include "data_type.h"
#include "service_interface.h"

class ServiceDataFactory
{
public:
    static std::shared_ptr<IServiceData> GetServiceData(DataType::Type, std::shared_ptr<INcData>);
};

#endif // SERVICE_FACTORY_H