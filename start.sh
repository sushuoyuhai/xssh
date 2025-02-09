#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: 2sopyxvdF8nRsItTD0A8s84ljgj_3J1NUUVEjJKUjQtGozExP"
ngrok authtoken 2sopyxvdF8nRsItTD0A8s84ljgj_3J1NUUVEjJKUjQtGozExP
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
