#!/bin/bash

aws cloudformation $ACTION \
    --region eu-west-1 \
    --stack-name $STACK_NAME \
    --template-body file://service.yaml \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameters \
    ParameterKey=DockerImage,ParameterValue=$ADD_SERVER_ADDRESS_HERE/exampl-webapp:$(git rev-parse HEAD) \
    ParameterKey=VPC,ParameterValue=$ADD_VPC_HERE
    ParameterKey=Cluster,ParameterValue=default \
    ParameterKey=Listener,ParameterValue=$ADD_ARN_HERE
    