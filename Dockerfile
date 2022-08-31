FROM alpine:3.16

RUN apk add bash
RUN apk add caddy
RUN apk add curl
RUN apk add jq

COPY Caddyfile /root/
ADD startup.sh /startup.sh

RUN chmod +x /startup.sh
CMD /startup.sh
