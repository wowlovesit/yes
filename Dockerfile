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

COPY chisel_1.7.7_linux_amd64.gz /
RUN gzip -d chisel_1.7.7_linux_amd64.gz
RUN chmod +x chisel_1.7.7_linux_amd64

ADD init.sh /init.sh
RUN chmod +x /init.sh
CMD /init.sh




 
