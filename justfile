build:
   rm ../forget-about-it/server/protobufs-build/ -rf
   mkdir ../forget-about-it/server/protobufs-build
   protoc -I. --go_out=../forget-about-it/server/protobufs-build ./client_to_server.proto
   protoc -I. --go_out=../forget-about-it/server/protobufs-build ./server_to_client.proto
   protoc -I. --go_out=../forget-about-it/server/protobufs-build ./scheduler.proto

   rm ../forget-about-it/frontend/lib/protobufs-build/ -rf
   mkdir ../forget-about-it/frontend/lib/protobufs-build
   protoc -I. --dart_out=../forget-about-it/frontend/lib/protobufs-build ./client_to_server.proto
   protoc -I. --dart_out=../forget-about-it/frontend/lib/protobufs-build ./server_to_client.proto
   protoc --dart_out=../forget-about-it/frontend/lib/protobufs-build -I. google/protobuf/timestamp.proto google/protobuf/duration.proto
