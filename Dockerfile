FROM teddysun/xray:latest
COPY config.json /etc/xray/config.json
CMD sh -c "sed -i \"s/10000/${PORT:-10000}/g\" /etc/xray/config.json && xray run -c /etc/xray/config.json"
