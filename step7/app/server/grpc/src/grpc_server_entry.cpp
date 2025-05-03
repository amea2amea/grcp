// インクルード
#include "grpc_server_entry.h"
#include "grpc_server.h"

/**
 * @brief ファクトリー
 */
std::shared_ptr<IServiceEntry> GrpcServerEntry::GetGrpcServerEntry(const std::string &server_address)
{
    return std::make_shared<GrpcServer>(server_address, std::make_shared<GrpcServiceImp>());
}
