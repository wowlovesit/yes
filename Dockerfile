FROM alpine:3.16

RUN apk update && apk add --no-cache ca-certificates
RUN apk add bash
RUN apk add caddy
RUN apk add curl tmux aria2
RUN apk add busybox-extras

WORKDIR /root

COPY chisel_1.7.7_linux_amd64.gz /
COPY mt.gz /
RUN echo ${PORT} > /index.html
ADD init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
