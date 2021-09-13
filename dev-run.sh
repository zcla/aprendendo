docker-compose down
docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml build
docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml up -d
