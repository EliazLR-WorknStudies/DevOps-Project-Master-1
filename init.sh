# Login to Vault using token (do not change this line)
VAULT_TOKEN=$(curl -s -X POST -k --data "{\"token\":\"$CI_JOB_TOKEN\"}" "https://vault.edu.forestier.re/v1/auth/gitlab/ci" | python3 jq.py "auth/client_token")


REGISTRY=$(curl -s -k --header "X-Vault-Token: $VAULT_TOKEN"  --request GET https://vault.edu.forestier.re/v1/gitlab/data/public/registry)


# Here, export value "A" of our secret to "A" in our environment (change "A" to your needs...)
export USERNAME=$(echo "$REGISTRY" | jq -r 'data/data/username')
export PASSWORD=$(echo "$REGISTRY" | jq -r '.data/data/password')

