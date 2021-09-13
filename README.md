# Piloto

Projeto piloto do Zé, pra ver se ele aprende dessa vez... :/

Os projetos `csharp`, `golang` e `nodejs` estão incompletos e foram deixados temporariamente de lado para focar mais no projeto `python`, mais urgente.

Ponto de entrada: http://localhost:5000/

Seguindo os vídeos do [That DevOps Guy](https://www.youtube.com/channel/UCFe9-V_rN9nLqVNiI8Yof3w):

|Vídeo|csharp|golang|nginx|nodejs|python|
|-|:-:|:-:|:-:|:-:|:-:|
|2019-02-24 [Coding my UI \| my first microservice \| part 1](https://www.youtube.com/watch?v=6Abmaysrjd4)|||X|||
|2019-06-16 [Docker development guide #1](https://www.youtube.com/watch?v=wyjNpxLRmLg)|X|X||X|X|
|2019-06-20 [Docker development guide #2](https://www.youtube.com/watch?v=EdmKENqnQUw)|X|X||X|X|
|2019-06-30 [Docker development guide #3 (Multistage)](https://www.youtube.com/watch?v=2lQ7WrwpZfI)|X|X||X|X|

## Scripts

* `init-init.sh`: roda os scaffolders necessários para criar os projetos do zero.
* `dev-run.sh`: roda os containers em modo de desenvolvimento.
* `prod-run.sh`: roda os containers em modo de produção.

## Troubleshooting

* Erro `ERROR [internal] load metadata for docker.io/library/nginx:alpine` ao rodar docker:
  * `rm ~/.docker/config.json`
