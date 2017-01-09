DOCKER_REGISTRY=pgeffriaud
TAG=v0.1
for SERVICE in hasher rng webui worker; do
docker service create --network dockercoins --name $SERVICE \
       $DOCKER_REGISTRY/dockercoins_$SERVICE:$TAG
done

