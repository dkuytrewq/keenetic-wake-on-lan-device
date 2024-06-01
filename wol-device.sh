#!/bin/sh
logger -t woLAN "wake on lan - script start"

ping -c 3 192.168.1.1 > /dev/null
if [ $? -ne 0 ]; then
  wget -qO - --post-data='[{"mac":"1a:2b:3c:11:22:33"}]' http://localhost:79/rci/ip/hotspot/wake
  logger -t woLAN "wake on lan - device waked"
fi

logger -t woLAN "wake on lan - script finish"
