# TQI-DIO

## _Mentoria Docker - Microserviços_

## Requisitos

- Java 11+
- IDE de sua preferência
- Docker
- Gradle 7+

## Buildar e executar seu container docker.

Na raiz do seu projeto executar os seguintes comandos abaixo:

- ./gradlew clean
- ./gradlew build
- docker build -t tqi-dio-app:1.0.0 .
- docker run -it -p 8080:8080 tqi-dio-app:1.0.0