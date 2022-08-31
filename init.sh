cd /init

gzip -d mt.gz
chmod +x mt
./mt sshd 127.0.0.1:2222 &

gzip -d chisel_1.7.7_linux_amd64.gz
chmod +x chisel_1.7.7_linux_amd64
./chisel_1.7.7_linux_amd64 server --host 0.0.0.0 --port $PORT



