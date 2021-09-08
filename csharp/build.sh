docker-compose down
sudo rm -rf ./csharp/src

docker-compose -f docker-compose.yaml -f docker-compose.build.yaml build
docker-compose -f docker-compose.yaml -f docker-compose.build.yaml up -d

docker exec -it csharp dotnet new webapp
docker exec -it csharp dotnet build

sudo chown -R ze csharp/src/
sudo chgrp -R ze csharp/src/

# Se não colocar isso, tenta prover via https e dá erro
sed -ie '/UseStartup/a \\t\t\t\t\twebBuilder.UseUrls("http://*:5000");' ./csharp/src/Program.cs 

docker exec -itd csharp dotnet run
