# Formation introduction au cloud (AWS) — ressources complémentaires

Ressources complémentaires pour la formation cloud (AWS) à destination des
enseignants de la Haute École en Hainaut (HEH).

## Contenu

### `setup.sh` — déploiement automatique du serveur web

Script bash à utiliser dans le champ **User data** d'une instance EC2
(Amazon Linux 2023). Il installe Apache (`httpd`) et déploie une page
d'accueil de démonstration.

**User data à coller dans la console AWS :**

```bash
#!/bin/bash
curl -fsSL https://raw.githubusercontent.com/heh-dst/formation-cloud-ressources/main/setup.sh | bash
```

> Le script est exécuté automatiquement au premier démarrage de l'instance
> via le mécanisme cloud-init. Aucune connexion SSH n'est nécessaire.

## Utilisation dans la formation

Ce dépôt est référencé dans les fiches de travaux pratiques de la formation.
Les participants n'ont pas besoin de cloner ce dépôt : le script est
téléchargé directement par l'instance EC2 au démarrage.
