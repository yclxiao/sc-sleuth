### 注意事项：
1. docker方式暂未使用
2. 目前是在自己的mac上安装启动的需要的一些中间件
3. 工程里的代码很多是直接引用`丁雪丰`老师的代码

### 此项目博客地址
https://juejin.im/post/5d70a939e51d4561e224a3b4

### 关于容器的
1. 一键启停容器
    
    `docker images #列出所有镜像`
    
    `docker ps -aq #列出所有容器的id`
    
    `docker stop $(docker ps -aq) #停止所有容器`
    
    `docker rm $(docker ps -aq) #删除所有容器`
    
    `docker rmi $(docker images -q) #删除所有镜像`
    
    `-q #只列出id，不列出详情`
    
2. 启动容器
    > 如果是删除了容器，直接重新启动`docker run xxxxxxxxx `
    
    > 如果只是停止了容器，则用`docker start 容器id`重新启动
    
    