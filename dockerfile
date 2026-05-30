FROM node:22.13-alpine3.21
RUN apk update
RUN apk add git curl wget screen nano bash
RUN npm install -g verdaccio
ARG CACHEBUST=v2
RUN cd /root
COPY prompt /root/prompt
COPY bashrc /root/.bashrc
COPY entrypoint /entrypoint
RUN chmod a+x /entrypoint
WORKDIR /root
ENTRYPOINT ["/entrypoint"]
