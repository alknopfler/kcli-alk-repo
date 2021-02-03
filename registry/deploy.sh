REGISTRY_VERSION=2
REGISTRY_DOMAIN=registry.hub.docker.com/library

REGISTRY_PORT=5000
yum -y install podman
podman create --name registry --net host --rm -p $REGISTRY_PORT:$REGISTRY_PORT $REGISTRY_DOMAIN/registry:$REGISTRY_VERSION
podman start registry