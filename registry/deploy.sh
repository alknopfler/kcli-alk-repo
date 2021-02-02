REGISTRY_VERSION=2
REGISTRY_DOMAIN=localhost
REGISTRY_PORT=5000
yum -y install podman
podman create --name registry --net host --rm --security-opt label=disable -p $REGISTRY_PORT:$REGISTRY_PORT registry:$REGISTRY_VERSION
podman start owncloud