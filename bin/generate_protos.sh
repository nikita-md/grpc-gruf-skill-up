#!/bin/bash

grpc_tools_ruby_protoc --ruby_out=app/rpc --grpc_out=app/rpc protos/dispatcher.proto
