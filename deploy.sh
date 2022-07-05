mvn clean package -U -DskipTests=true
docker build ./ -t mayex/eureka-server:1.0.0
docker save mayex/eureka-server:1.0.0 > eureka-server.tar

#上传到cicd主机
sudo scp -i id_rsa eureka-server.tar  mayex@13.213.136.93:/home/mayex/
#在目标主机上执行
scp eureka-server.tar  mayex@10.180.109.65:/home/mayex/
scp eureka-server.tar  mayex@10.180.110.110:/home/mayex/
scp eureka-server.tar  mayex@10.180.111.12:/home/mayex/
#导入docker
cat eureka-server.tar | docker load


#本地执行
(docker stop eureka-server || true ) && (docker rm eureka-server || true)
docker run -p 8761:8761 -m 2g -e "Xms=1.5g"  --restart=always --name="eureka-server" -d mayex/eureka-server:1.0.0 peer1