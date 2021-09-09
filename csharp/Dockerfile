######################################################################### build

# https://hub.docker.com/_/microsoft-dotnet-sdk/ (5.0.400-alpine3.13-amd64)
FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine as build

########################################################################### dev

# https://hub.docker.com/_/microsoft-dotnet-sdk/ (5.0.400-alpine3.13-amd64)
FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine as dev

RUN mkdir /work/
WORKDIR /work/

# Carrega dependências (separado para só rodar quando mudarem as dependências)
COPY ./src/work.csproj /work/work.csproj
RUN dotnet restore

# Roda sempre, em qualquer alteração no projeto
COPY ./src/ /work/
RUN mkdir /out/
RUN dotnet publish --no-restore --output /out/ --configuration Release

########################################################################## prod

# https://hub.docker.com/_/microsoft-dotnet-aspnet/ (5.0.9-alpine3.13-amd64)
FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine as prod

RUN mkdir /work/
WORKDIR /work/

# Deveria substituir a alteração pedida no final do build.sh, mas só funciona aqui nesse target, então não adianta muito...
ENV ASPNETCORE_URLS http://*:5000

# Traz o que foi feito no target "dev"
COPY --from=dev /out/ /work/
RUN chmod +x /work/
CMD dotnet work.dll
