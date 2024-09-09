#!/bin/bash

if [[ ! -d certs ]]
then
    mkdir certs
    cd certs/
    if [[ ! -f localhost.pfx ]]
    then
        dotnet dev-certs https -v -ep localhost.pfx -p 07c9fc24-4afe-408d-9ae3-2debbc732bad -t
    fi
    cd ../
fi

docker-compose up -d
