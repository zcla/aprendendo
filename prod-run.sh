docker-compose down
docker-compose build
docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml up -d
