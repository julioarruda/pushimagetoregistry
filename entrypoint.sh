#!/bin/sh -l

echo "Hello, today i will help you to upload your Docker Images to ACR (or i hope do this)."

error_exit()
{
	echo "$1" 1>&2
	exit 1
}

TOKEN_NAME=$1
TOKEN_PWD=$2


echo "Using Account $3"


if (echo $TOKEN_PWD | docker login --username $TOKEN_NAME --password-stdin $3); then

     echo "Docker connected to $3"

else
    error_exit "Failed to connect to $3"
fi

echo "Pushing image: $4"

if (docker push $4); then
    echo "Image $4 pushed to $3"

else
    error_exit "Failed to push image $4 to $3"
fi
