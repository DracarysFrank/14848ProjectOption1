tar -xzvf docker-hadoop.tar.gz
cd docker-hadoop
docker run docker/compose:1.24.0 version
export PWD=/docker-hadoop

docker run -d --rm -v /var/run/docker.sock:/var/run/docker.sock -v "$PWD:$PWD" -w="$PWD" docker/compose:1.24.0 up