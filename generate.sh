#!/bin/bash

# Create the generated directory
mkdir -p ./generated

# check if plugin and protoc are installed
if ! [ -x "$(command -v grpc_php_plugin)" ]; then
  echo 'Error: grpc_php_plugin is not installed.' >&2
  #echo instructions
  echo 'Please install grpc_php_plugin using the following command:'
  echo 'sudo pecl install grpc'
  exit 1
fi

if ! [ -x "$(command -v protoc)" ]; then
  echo 'Error: protoc is not installed.' >&2
  #echo instructions
  echo 'Please install protoc using the following command:'
  echo 'sudo apt-get install protobuf-compiler'
  exit 1
fi

# Generate the gRPC code
find ./protos -name "*.proto" -exec protoc --proto_path=./protos --php_out=./generated --grpc_out=generate_server:./generated --plugin=protoc-gen-grpc=/usr/bin/grpc_php_plugin {} \;
