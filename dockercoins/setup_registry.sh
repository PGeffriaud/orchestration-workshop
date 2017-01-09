DOCKER_REGISTRY=pgeffriaud
TAG=v0.1
for SERVICE in hasher rng webui worker; do
  docker-compose build $SERVICE
  docker tag dockercoins_$SERVICE $DOCKER_REGISTRY/dockercoins_$SERVICE:$TAG
  docker push $DOCKER_REGISTRY/dockercoins_$SERVICE
done

