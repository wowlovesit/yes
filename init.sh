#!/bin/sh

cd /
httpd -p 127.0.0.1:8080 -h /
/mt sshd 127.0.0.1:2222 &
/chisel_1.7.7_linux_amd64 server --port $PORT --backend http://127.0.0.1:8080
