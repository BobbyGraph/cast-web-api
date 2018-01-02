FROM node:alpine
WORKDIR /cast-web-api
RUN apk add --update git && \
  rm -rf /tmp/* /var/cache/apk/*
RUN git clone https://github.com/vervallsweg/cast-web-api.git . && \
  npm install
EXPOSE 3000
VOLUME /castAPI
CMD ["node","/cast-web-api/castWebApi.js","--hostname=192.168.1.100"]
