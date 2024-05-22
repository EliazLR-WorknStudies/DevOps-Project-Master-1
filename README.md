# DevOps Project Master 1

## English 🇬🇧

### About this project : 
This project was my first time working with a typical DevOps tech stack (Ansible, Terraform, etc.). It scored me a grade of 19.5/20, the best grade in my cohort. While it cannot be executed anymore since the servers used do not exist anymore, it's structure is still useful.

### Getting started :

Connect to [Vault](https://vault.edu.forestier.re/) and retrieve the token, then execute ./make_secret.sh to create the files with the secrets necessary for running Terraform and the Ansible playbook.

Then :

In `./terraform` :

```bash
terraform init
terraform apply
terraform destroy
```

In `./ansible` :

```bash
ansible-playbook -u cloud -i inventories/dev/hosts --private-key ~/.ssh/id_rsa main.yml
```

### Features :

Deploys :

- Nextcloud at : https://nextcloud.eliaz.uca-devops.ovh/
- Wordpress at : https://wordpress.eliaz.uca-devops.ovh/
- The Go server at : https://go_app.eliaz.uca-devops.ovh/
- Prometheus at : https://prometheus.eliaz.uca-devops.ovh/
- Grafana at : https://grafana.eliaz.uca-devops.ovh/

### Conclusion :

Time spent on the project :
[![wakatime](https://wakatime.com/badge/user/daf0cfff-7431-487e-b036-5476747df82f/project/018dc6cf-5a3b-4b11-bfe7-17def5bd8de2.svg)](https://wakatime.com/badge/user/daf0cfff-7431-487e-b036-5476747df82f/project/018dc6cf-5a3b-4b11-bfe7-17def5bd8de2)

## Français 🇫🇷

### Démarrage :

Se connecter sur [Vault](https://vault.edu.forestier.re/) et récupérer le token puis executer `./make_secret.sh` pour créer les fichiers avec les secrets permettant l'execution du terraform et playbook ansible.

Puis :

Dans `./terraform` :

```bash
terraform init
terraform apply
terraform destroy
```

Dans `./ansible` :

```bash
ansible-playbook -u cloud -i inventories/dev/hosts --private-key ~/.ssh/id_rsa main.yml
```

### Fonctionnalités :

Deploie :

- Nextcloud à l'adresse : https://nextcloud.eliaz.uca-devops.ovh/
- Wordpress à l'adresse : https://wordpress.eliaz.uca-devops.ovh/
- Le serv Go à l'adresse : https://go_app.eliaz.uca-devops.ovh/
- Prometheus à l'adresse : https://prometheus.eliaz.uca-devops.ovh/
- Grafana à l'adresse : https://grafana.eliaz.uca-devops.ovh/

### Conclusion :

Temps passé sur le projet :
[![wakatime](https://wakatime.com/badge/user/daf0cfff-7431-487e-b036-5476747df82f/project/018dc6cf-5a3b-4b11-bfe7-17def5bd8de2.svg)](https://wakatime.com/badge/user/daf0cfff-7431-487e-b036-5476747df82f/project/018dc6cf-5a3b-4b11-bfe7-17def5bd8de2)
