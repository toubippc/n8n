#/bin/bash

docker container ls

echo "What is container ID ? : "
read -r ID

docker image ls

echo "What image name of n8n ? :"
read IMAGE


docker container stop $ID
docker container rm $ID
docker rmi $IMAGE

./build_dockerfile.sh
./create_container.sh


