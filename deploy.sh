#!/bin/bash

# ARG IMAGE_NAME
# ARG PORT
cmd=$1
port=$2
echo -n "cmd: $cmd, port: $port"
set IMAGE_NAME="model_predictor_2"
set PORT="5040"


run_predictor() {
    docker build -f ec2_server/model_predictor/Dockerfile -t  "model_predictor_2" .
    IMAGE_NAME=$IMAGE_NAME PORT=$port
    # PORT=$port
    docker-compose -f ec2_server/model_predictor/docker-compose.yml up -d
}

case $cmd in
run_predictor)
    run_predictor
    ;;
*)
    echo -n "Unknown command: $cmd"
    exit 1
    ;;
esac

