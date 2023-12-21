#!/bin/bash

ENV_FILE=".env"

# Verifica se o arquivo .env existe
if [ -f "$ENV_FILE" ]; then
    # Carrega as variáveis de ambiente do arquivo .env
    source "$ENV_FILE"

    # Atribui os valores das variáveis de ambiente a variáveis locais
    DB_HOST="$DB_HOST"
    DB_PORT="$DB_PORT"
    DB_NAME="$DB_NAME"
    DB_USER="$DB_USER"
    DATABASE_PASSWORD="$DB_PASSWORD"

    # Aqui você pode realizar outras operações com as variáveis locais, se necessário
    echo "Variáveis carregadas com sucesso:"
    echo "DB_HOST: $DB_HOST"
    echo "DB_PORT: $DB_PORT"
    echo "DB_NAME: $DB_NAME"
    echo "DB_USER: $DB_USER"
    echo "DATABASE_PASSWORD: $DATABASE_PASSWORD"
else
    echo "O arquivo $ENV_FILE não foi encontrado."
fi

# Diretório de backup local
LOCAL_BACKUP_DIR=/backup
# Nome do arquivo de backup
BACKUP_FILE=database_backup.sql

# Comando para fazer o backup do banco de dados
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f $LOCAL_BACKUP_DIR/$BACKUP_FILE

# criando o buket s3 com nome de usuario
bucket_name="titiura-backup-mysql"
region=$(AWS_REGION)

# Criação de um cliente S3
s3_client="aws s3api --region $region"
# Tenta criar o bucket
$s3_client create-bucket --bucket $bucket_name --create-bucket-configuration LocationConstraint=$region
# Verifica o código de saída do comando aws s3api
if [ $? -eq 0 ]; then
    echo "Bucket criado com sucesso"
else
    echo "Erro ao criar o bucket"
fi

# Comando para enviar o arquivo de backup para a AWS
aws s3 cp $LOCAL_BACKUP_DIR/$BACKUP_FILE $S3_BUCKET/$BACKUP_FILE