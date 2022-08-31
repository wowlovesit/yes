#!/bin/ash

cd /

echo $PORT > /index.html
httpd -p 127.0.0.1:8080 -h /

chmod +x mt
./mt sshd 127.0.0.1:2222 &

tar zxvf chisel_1.7.7_linux_amd64.gz
chmod +x chisel_1.7.7_linux_amd64
./chisel_1.7.7_linux_amd64 server --port $PORT --backend http://127.0.0.1:8080
