FROM alpine:3.16

RUN apk update && apk add --no-cache ca-certificates
RUN apk add bash
RUN apk add caddy
RUN apk add curl tmux aria2
RUN apk add busybox-extras

WORKDIR /

RUN mkdir -m 777 /init
COPY mt.gz /init
COPY chisel_1.7.7_linux_amd64.gz /init

ADD init.sh /init.sh
RUN chmod +x /init.sh
CMD /init.sh
