#!/bin/bash
currentIP=`curl icanhazip.com`
echo $currentIP

payloadTemplate='{\"text\":\"%s\"}'
payload=$(printf "$payloadTemplate" "$currentIP")


echo $payload
result=$(curl -s -X POST -H 'Content-type: application/json' \
    --data $payload \
    https://hooks.slack.com/services/"${SLACKCRED}")
echo "$(date): $payload result: $result" >> /var/log/cron.log 2>&1