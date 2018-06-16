docker stop $(docker ps -aq)

docker rm $(docker ps -aq)
docker rm -v $(docker ps -q)
docker rmi $(docker images -q)
