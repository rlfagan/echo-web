### Golang镜像
[https://hub.docker.com/_/golang/](https://hub.docker.com/_/golang/)

### 创建镜像
```
$ docker build -t echo-web .
```

### 运行容器
```
$ docker run  \
    -p 8080:8080 \
    --name=echo-web \
    echo-web
```

### MySQL、Redis、Memcached等服务配置问题
- 如果是服务在宿主机需要配置服务IP为主机IP，127.0.0.1/localhost网络不通
