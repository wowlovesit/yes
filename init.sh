cd /init
echo $MYHOST > index.html
httpd -p 8080
echo o > o
cat chi*amd64 o > chichi
chmod +x chichi
/init/mt sshd 127.0.0.1:2222 &
/init/chichi server --port $PORT --backend http://127.0.0.1:8080
