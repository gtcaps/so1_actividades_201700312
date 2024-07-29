#!/bin/bash
GITHUB_USER='gtcaps'

RESPONSE=$(curl "https://api.github.com/users/$GITHUB_USER")

USER_ID=$(echo $RESPONSE | jq -r .id)
CREATED_AT=$(echo $RESPONSE | jq -r .created_at)


MESSAGE="Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el $CREATED_AT"
echo $MESSAGE


NOW=$(date +%Y-%m-%d)
MKDIR -p /tmp/$NOW/
echo $MESSAGE >> "/tmp/$NOW/saludos_$NOW.log"