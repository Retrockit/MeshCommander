FROM node:base
WORKDIR /usr/src/app
RUN apt update -y && \
apt upgrade -y && \
npm install meshcommander
WORKDIR ./node_modules/meshcommander
EXPOSE 3000
ENTRYPOINT ["node", "meshcommander", "--any"]
