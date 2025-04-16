#ifndef FACTORY_SERVICE_H
#define FACTORY_SERVICE_H

// インクルード
#include "data_type.h"
#include "service_interface.h"

class ServiceDataFactory
{
public:
    static std::shared_ptr<IServiceData> GetServiceData(DataType::Type, std::shared_ptr<INcData>);
};

#endif // FACTORY_SERVICE_H