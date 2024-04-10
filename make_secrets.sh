#!/bin/bash

read -p "Enter your VAULT_TOKEN: " VAULT_TOKEN

curl -s -o jq.py -0 https://git.forestier.re/uca/2022-2023/devops-m1/jq/-/raw/main/jq.py

# Get secrets from Vault
REGISTRY=$(curl -s -k --header "X-Vault-Token: $VAULT_TOKEN"  --request GET https://vault.edu.forestier.re/v1/gitlab/data/public/registry)
OVH_CRED=$(curl -s -k --header "X-Vault-Token: $VAULT_TOKEN"  --request GET https://vault.edu.forestier.re/v1/gitlab/data/public/ovh_credentials)


DOCKER_USER=$(echo "$REGISTRY" | python3 jq.py "data/data/username")
DOCKER_PASSWORD=$(echo "$REGISTRY" | python3 jq.py "data/data/password")

APPLICATION_KEY=$(echo "$OVH_CRED" | python3 jq.py "data/data/APPLICATION_KEY")
APPLICATION_SECRET=$(echo "$OVH_CRED" | python3 jq.py "data/data/APPLICATION_SECRET")
CONSUMER_KEY=$(echo "$OVH_CRED" | python3 jq.py "data/data/CONSUMER_KEY")


echo "variable \"application_key\" {
    default = \"$APPLICATION_KEY\"
}

variable \"application_secret\" {
    default = \"$APPLICATION_SECRET\"
}

variable \"consumer_key\" {
    default = \"$CONSUMER_KEY\"
}

" >> ./terraform/secrets.tf

echo "docker_user: \"$DOCKER_USER\"
docker_password: \"$DOCKER_PASSWORD\"
" >> ./ansible/vars/secrets.yml

echo "Secrets have been successfully stored in secrets.tf and secrets.yml files."

rm jq.py