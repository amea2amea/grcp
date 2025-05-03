#ifndef GRPC_TYPES_H
#define GRPC_TYPES_H

// インクルード

// Proto生成ヘッダのインクルード（.proto から生成されたやつ）
#include "grpc_service_data.pb.h"
#include "grpc_service_data.grpc.pb.h"

// gRPC依存ライブラリ
#include <google/protobuf/map.h>
#include <grpcpp/grpcpp.h>

// 標準
#include <memory>
#include <string>

namespace grpc_types
{
    // Protoのプリミティブ型
    using Map = google::protobuf::Map<std::string, std::string>;

    // Protoの独自定義
    using GrpcValue = Map;
    using Request = grpc_service_data::ServiceDataRequest;
    using Response = grpc_service_data::ServiceDataResponse;
    using GrpcService = grpc_service_data::GrpcService;

    // gRPCサーバー／クライアントベース型
    using Status = grpc::Status;
    using ServerContext = grpc::ServerContext;
    using ClientContext = grpc::ClientContext;
    using Channel = grpc::Channel;
    using Stub = GrpcService::Stub;

    // スマートポインタのエイリアス
    using StubPtr = std::unique_ptr<Stub>;
    using GrpcValuePtr = std::shared_ptr<GrpcValue>;

} // namespace grpc_types

#endif // GRPC_TYPES_H
