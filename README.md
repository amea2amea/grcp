# gRPCを学ぶ
このリポジトリは、gRPCを学ぶためにSTEPごとに内容を分けてまとめたものです。

step1:  gRPCをリンクしてビルド

step2:  protoファイルからcppを自動生成してリンクしてビルド

step3:  serverとclientの構成でビルド

step4:	clientとserver間でのHellow World

step5:  ３層アーキテクチャに分離 -> Protocol Buffersにおいて独自型を生成して行うと、セグメントエラーになる

step6:  ３層アーキテクチャに分離 -> Protocol Buffersにおいて独自型をやめる

step7:  nc層、service層、grpc-server層をライブラリ化

step8:  google test (gtest)を追加