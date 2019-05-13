# https://lockmedown.com/docker-devs-multiple-containers-docker-compose/
FROM node:8

RUN npm config set registry https://registry.npm.taobao.org

RUN npm install -g cnpm 

COPY . /home/app/frontend

WORKDIR /home/app/frontend

RUN cnpm install

ENV NODE_ENV=development 

ENV CHOKIDAR_USEPOLLING=true

EXPOSE 8083

CMD ["./init.sh"]

# docuker run --name dev-app -p 8000:8083 -v /d/work/front-end/:/home/app vue-dev-i
