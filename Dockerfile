# FROM will download node image 19.3.0 from DockerHub
FROM node@sha256:867c09f220095929f3ab4113e7530a6e38833f2eb4317cb8998307528026621f
WORKDIR /usr/src/app
RUN npm install meshcommander
WORKDIR ./node_modules/meshcommander
EXPOSE 3000
ENTRYPOINT ["node", "meshcommander", "--any"]
