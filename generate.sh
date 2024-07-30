find ./protos -name "*.proto" -exec protoc --proto_path=./protos --php_out=./generated --grpc_out=generate_server:./generated --plugin=protoc-gen-grpc=/usr/bin/grpc_php_plugin {} \;
