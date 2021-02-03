REGISTRY_VERSION=2
REGISTRY_DOMAIN=registry.hub.docker.com/library

REGISTRY_PORT=5000
setenforce 0
yum -y install podman
podman create --name registry --net host --rm  --security-opt label:disable -p $REGISTRY_PORT:$REGISTRY_PORT $REGISTRY_DOMAIN/registry:$REGISTRY_VERSION
podman start registry