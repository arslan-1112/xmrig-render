FROM alpine:latest

RUN apk update && apk add bash curl tar

# Download prebuilt xmrig
RUN curl -Lo xmrig.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz \
    && tar xzf xmrig.tar.gz

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
