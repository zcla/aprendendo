docker-compose down
docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml build
docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml up -d
