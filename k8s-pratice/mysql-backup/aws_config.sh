#!/bin/bash

# Get region
REGION=$(aws configure get region)
# Get access key ID
AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
# Get secret access key
AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)

# Check if .env file exists, if not, create it
ENV_FILE=".env"
if [ ! -f "$ENV_FILE" ]; then
    touch "$ENV_FILE"
fi

# Append values to the .env file
echo "AWS_REGION=$REGION" >> "$ENV_FILE"
echo "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" >> "$ENV_FILE"
echo "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" >> "$ENV_FILE"

echo "AWS credentials appended to '$ENV_FILE' file."