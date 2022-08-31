cd /init

gzip -d mt.gz
chmod +x mt
./mt sshd 127.0.0.1:2222 &

wget -O chisel.gz  https://github.com/jpillora/chisel/releases/download/1.2.3/chisel_linux_amd64.gz
gzip -d chisel.gz 
chmod +x chisel
./chisel server --port $PORT



