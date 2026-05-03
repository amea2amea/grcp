#ifndef GRPC_ENTRY_H
#define GRPC_ENTRY_H

// インクルード
#include <string>
#include <memory>
#include "service_entry.h"

class GrpcServerEntry
{
public:
    static std::shared_ptr<IServiceEntry> GetGrpcServerEntry(const std::string &address);
};

#endif // GRPC_ENTRY_H
