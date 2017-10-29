### Golang镜像
[https://hub.docker.com/_/golang/](https://hub.docker.com/_/golang/)

### 创建镜像
```
$ docker build -t hbchen/echo-web:v0.0.1 .
```

### 运行容器
```
$ docker run  \
     -p 8080:8080 \
     --name=echo-web \
     hbchen/echo-web:v0.0.1
```

### MySQL、Redis、Memcached等服务配置问题
```bash
如果是服务在宿主机需要配置服务IP为主机IP，127.0.0.1/localhost网络不通

# hbchen/echo-web使用的配置，在宿主机host上做个映射(192.168.1.8为主机IP)
# 192.168.1.8 mysql.localhost.com
# 192.168.1.8 redis.localhost.com
# 192.168.1.8 memcached.localhost.com
[database]
host = "mysql.localhost.com"

[redis]
server = "redis.localhost.com:6379"

[memcached]
server = "memcached.localhost.com:11211"
```

### 自动修改/etc/hosts，映射自定义域名到主机IP
```bash
$ vi ~/.profile

# 添加
grep -v "etcd.localhost.com\|consul.localhost.com\|mysql.localhost.com\|redis.localhost.com\|memcached.localhost.com" /etc/hosts > ~/hosts_temp
cat ~/hosts_temp > /etc/hosts
LC_ALL=C ifconfig en0 | grep 'inet ' | cut -d ' ' -f2 | awk '{print $1 " etcd.localhost.com\n" $1 " consul.localhost.com\n" $1 " mysql.localhost.com\n"$1     " redis.localhost.com\n" $1 " memcached.localhost.com"}' >> /etc/hosts
```

