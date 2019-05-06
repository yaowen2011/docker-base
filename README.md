# docker-base

# docker 于开发时的意义
  - 可以搭建多个版本的开发环境
  - 比如： A项目环境需要node6版本  B项目的环境需要node8  C项目需要一套lamp环境  此时使用docker来搭建开发环境 可以非常省事
# 使用此demo
  1. 安装docker
  2. 设置共享的目录
  3. 创建image，在项目跟目录下执行：docker build -t hello-node . 
  4. 运行：docker run -p 8080:8000 hello-node
  5. 打开浏览器访问: http://localhost:8080
  6. 查看命令行输出: docker attach hello-node
# 常用的命令
  - docker build -t hello-node .  // build an image from a dockerfile
  - docker images
  - docker rmi hello-node
  - docker container ls
  - docker ps
  - docker attach container-name
  - docker-compose config
  - docker-compose up
  - docker run --name nginx-web01 -p 3000:80 -v c:/Users/Administrator/hello-world:/usr/share/nginx/html:ro -d nginx