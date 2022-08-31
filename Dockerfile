FROM alpine:3.16

RUN apk update && apk add --no-cache ca-certificates
RUN apk add bash
RUN apk add caddy
RUN apk add curl tmux aria2
RUN apk add busybox-extras

WORKDIR /

COPY mt.gz /
RUN gzip -d mt.gz
RUN chmod +x mt
CMD ./mt sshd 127.0.0.1:2222 &

RUN echo "ok" > /index.html
CMD httpd -p 127.0.0.1:8080 -h /

COPY chisel_1.7.7_linux_amd64.gz /
RUN gzip -d chisel_1.7.7_linux_amd64.gz
RUN chmod +x chisel_1.7.7_linux_amd64
CMD ./chisel_1.7.7_linux_amd64 server --port $PORT --backend http://127.0.0.1:8080






 
