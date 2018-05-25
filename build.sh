set -ex

USERNAME=fliu

IMAGE=biodb
docker build -t $USERNAME/$IMAGE:latest .