# Login to Vault using token (do not change this line)
VAULT_TOKEN=$(curl -s -X POST -k --data "{\"token\":\"$CI_JOB_TOKEN\"}" "https://vault.edu.forestier.re/v1/auth/gitlab/ci" | python3 jq.py "auth/client_token")

# Retrieve a Vault secret and store it in a variable. here, chagne {ENGINE} and {PATH} to fit your needs
# Example : https://vault.edu.forestier.re/v1/home/data/fforestier/test
REGISTRY_USERNAME=$(curl -s -X GET -k --header "X-Vault-Token: $VAULT_TOKEN" "https://vault.edu.forestier.re/v1/gitlab/data/registry/username")
REGISTRY_PASSWORD=$(curl -s -X GET -k --header "X-Vault-Token: $VAULT_TOKEN" "https://vault.edu.forestier.re/v1/gitlab/data/registry/password")

# Here, export value "A" of our secret to "A" in our environment (change "A" to your needs...)
export USERNAME=$(echo "$REGISTRY_USERNAME" | python3 jq.py "data/data/USERNAME")
export PASSWORD=$(echo "$REGISTRY_PASSWORD" | python3 jq.py "data/data/PASSWORD")

