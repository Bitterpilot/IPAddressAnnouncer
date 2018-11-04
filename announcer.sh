#!/bin/bash
currentIP=`curl icanhazip.com`
echo $currentIP

wrap={"text":"${currentIP}"}

curl -X POST -H 'Content-type: application/json' \
    --data '{"text":"${currentIP}"}' \
    https://hooks.slack.com/services/"${SLACKCRED}"


# curl -X POST -H 'Content-type: application/json' \
#     --data '{"text":"${currentIP}"}' \
#     https://hooks.slack.com/services/"${SLACKCRED}"