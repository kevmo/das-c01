#!/bin/bash

aws --version

#  produce 

aws kinesis put-record --stream-name test --partition-key user1 --data "user sign up" --cli-binary-format raw-in-base64-out

# describe
aws kinesis describe-stream --stream-name test

# CONSUUUUME

aws kinesis get-shard-iterator --stream-name test --shard-id shardId-0000000000 --shard-iterator-type TRIM_HORIZON

aws kinesis get-records --shard-iterator <<>>