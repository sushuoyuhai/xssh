#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: 2sopiRdayCNk7LZL7lES06Th7pv_88SvhAkVmwTirhKhD2Zkm"
ngrok authtoken 2sopiRdayCNk7LZL7lES06Th7pv_88SvhAkVmwTirhKhD2Zkm
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
