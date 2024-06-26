#!/bin/bash

awslocal sns create-topic --name notification-topic
awslocal sqs create-queue --queue-name notification-queue

# subscribe the queue to the topic
awslocal --endpoint-url=http://localhost:4566 sns subscribe --topic-arn arn:aws:sns:us-east-1:000000000000:notification-topic --protocol sqs --notification-endpoint arn:aws:sqs:us-east-1:000000000000:notification-queue

awslocal --endpoint http://localhost:4566  s3 mb s3://s3-helloworld

aws --endpoint-url=http://localhost:4566 s3api create-bucket --bucket mybucket



