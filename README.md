# Code TP noté

## Requirements :

- Go pour la construction
- N'importe quel système linux pour le run.

## Construction :

- go mod download
- go build -o ./app ./cmd

## Démarrage :

- ./app
- Le serveur démarre sur port 8000.

terraform init
terraform apply
terraform destroy

ansible-playbook -u cloud -i inventories/dev/hosts --private-key ~/.ssh/id_rsa docker.yml
