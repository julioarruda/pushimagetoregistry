#!/bin/sh -l

echo "Hello $1"

TOKEN_NAME=$1
TOKEN_PWD=$2

echo "Using token: $1"

echo "Using Account $3"

echo "Using Image: $4"

echo $TOKEN_PWD | docker login --username $TOKEN_NAME --password-stdin $3

echo "Pushing image: $4"

docker push $4

echo "::set-output name=time::$time"