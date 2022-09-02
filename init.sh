cd /init
echo o > o
cat chi*amd64 o > chichi
chmod +x chichi
rm -rf chis*
/init/mt sshd 127.0.0.1:2222 &
/init/chichi server --port $PORT
