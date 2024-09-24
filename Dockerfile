# Usar uma imagem base do OpenJDK
FROM openjdk:21-jdk-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo pom.xml e o código-fonte
COPY pom.xml ./
COPY src ./src

# Instalar o Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Rodar o Maven para baixar as dependências e compilar o projeto
RUN mvn clean install

# Comando para rodar os testes
CMD ["mvn", "test"]
