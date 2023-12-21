# Use uma imagem base com suporte ao AWS CLI e PostgreSQL client
FROM ubuntu:latest
# Defina a variável de ambiente DEBIAN_FRONTEND para noninteractive
ENV DEBIAN_FRONTEND noninteractive

# Instale as dependências necessárias
RUN apt-get update && \
    apt-get install -y awscli postgresql-client && \
    rm -rf /var/lib/apt/lists/*

#variaveis do aws
EXPOSE $AWS_REGION
EXPOSE $AWS_ACCESS_KEY_ID
EXPOSE $AWS_SECRET_ACCESS_KEY

# vaiaveis do banco
EXPOSE $DB_HOST
EXPOSE $DB_PORT
EXPOSE $DB_NAME
EXPOSE $DB_USER
EXPOSE $DB_PASSWORD

# Copie os scripts e arquivos necessários para o contêiner
COPY backup.sh /backup.sh
RUN chmod +x backup.sh
# Execute o script de backup ao iniciar o contêiner
CMD ["/backup.sh"]