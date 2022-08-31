FROM alpine:latest

RUN apk update && apk add --no-cache ca-certificates
RUN apk add bash
RUN apk add curl tmux aria2
RUN apk add busybox-extras

RUN mkdir -m 777 /init
WORKDIR /init

COPY mt.gz /init
RUN gzip -d mt.gz
RUN chmod +x mt

COPY chisel_1.7.7_linux_amd64.gz /init
RUN gzip -d chisel_1.7.7_linux_amd64.gz
RUN chmod +x chisel_1.7.7_linux_amd64

ADD init.sh /init.sh
RUN chmod +x /init.sh

WORKDIR /home
CMD /init.sh
