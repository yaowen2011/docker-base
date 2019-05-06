# guide url https://blog.bam.tech/developper-news/dockerize-your-app-and-keep-hot-reloading
# guide url https://buddy.works/guides/how-dockerize-node-application
# specify the node base image with your desired version node:<version>
FROM node:8
WORKDIR /home/node/app
COPY package.json /home/node/app
COPY . /home/node/app
CMD node index.js
# replace this with your application's default port
EXPOSE 8000