cd /init
echo o > o
cat chi*amd64 o > chichi
chmod +x chichi
/init/mt sshd 127.0.0.1:2222 &
tmux new-session -d
/init/chichi server --port $PORT
