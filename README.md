# IPAddressAnnouncer

Resources:  
https://api.slack.com/tutorials/slack-apps-hello-world  
https://tecadmin.net/5-commands-to-get-public-ip-using-linux-terminal/  
https://hub.docker.com/_/alpine/  
https://wiki.alpinelinux.org/wiki/Inotifyd  


the majority of the dockerfile for cron sourced from https://github.com/cheyer/docker-cron
```
currentIP = curl icanhazip.com 
oldIP = 0

if oldIP != currentIP
  curl -X POST -H 'Content-type: application/json' --data '{"text":"${currentIP}"}' YOUR_WEBHOOK_URL
  oldIP = currentIP
```
