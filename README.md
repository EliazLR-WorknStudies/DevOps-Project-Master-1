# Code TP noté

## Démarrage :

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

## Fonctionnalités :

Deploie :

- Nextcloud à l'adresse : https://nextcloud.eliaz.uca-devops.ovh/
- Wordpress à l'adresse : https://wordpress.eliaz.uca-devops.ovh/
- Le serv Go à l'adresse : https://go_app.eliaz.uca-devops.ovh/
- Prometheus à l'adresse : https://prometheus.eliaz.uca-devops.ovh/
- Grafana à l'adresse : https://grafana.eliaz.uca-devops.ovh/

## Conclusion :

Temps passé sur le projet :
[![wakatime](https://wakatime.com/badge/user/daf0cfff-7431-487e-b036-5476747df82f/project/018dc6cf-5a3b-4b11-bfe7-17def5bd8de2.svg)](https://wakatime.com/badge/user/daf0cfff-7431-487e-b036-5476747df82f/project/018dc6cf-5a3b-4b11-bfe7-17def5bd8de2)
