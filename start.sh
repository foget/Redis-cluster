cd /opt/redis
docker-compose up --build -d

docker run -it --net=host --rm redis redis-cli --cluster create $1:7000 $1:7001 $1:7002 $1:7003 $1:7004 $1:7005 --cluster-replicas 1
