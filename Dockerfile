FROM openjdk:11-jre-slim
# Argumento obrigatório, aponta a partir de qual imagem iremos construir nosso container
# Se voce quer uma imagem que não tenha nenhuma estrutura de algum provider, utilizar o argumento FROM scratch

ADD build/libs/*.jar app.jar
# Argumento utilizado para fazer copias de arquivos e diretorios
# Também pode ser utilizado o comando COPY

EXPOSE 8080
# Usado para indicar qual porta o container vai estar escutando quando iniciado

VOLUME /dio
# Argumento usado para criar uma pasta que poderá ser compartilhada entre os container que ficará disponivel na maquina HOST

WORKDIR /workspace-dio
# Argumento para criação da nossa workspace, onde os demais argumentos serão executados no momento em que o container estiver rodando

ENTRYPOINT ["java","-jar","/app.jar"]
# Argumento utilizado para defini o(s) comandos que serão executados ao inicializar o contaienr