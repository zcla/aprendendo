# ./csharp/init.sh

docker-compose down
docker-compose -f docker-compose.yaml -f docker-compose.init.yaml build
docker-compose -f docker-compose.yaml -f docker-compose.init.yaml up -d
