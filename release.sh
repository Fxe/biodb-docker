set -ex

USERNAME=fliu
IMAGE=biodb

version=`cat VERSION`
echo "version: $version"

./build.sh

docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version