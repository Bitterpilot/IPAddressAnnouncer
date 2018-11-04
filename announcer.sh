#!/bin/bash
currentIP=`curl icanhazip.com`
echo $currentIP

payloadTemplate='{\"text\":\"%s\"}'
payload=$(printf "$payloadTemplate" "$currentIP")


echo $payload
curl -X POST -H 'Content-type: application/json' \
    --data $payload \
    https://hooks.slack.com/services/"${SLACKCRED}"