# Build Projet Java Gradle

## Conditions préalables au build : 
- Avoir au moins docker et Postgresql d'installés pour build l'app en local
- Créer manuellement une base de données postgresql *covid-db-mep* avec un      utilisateur ayant pour login et mot de passe *postgres*
- Installer Jenkins si l'on veut plutôt build avec un Jenkinsfile


## Etapes pour build l'application en local : 

- ouvrir un terminal au dossier TD2-MISE-EN-PROD
- executer la commande <mark> docker build -t *NomImage* . <mark>
- executer la commande <mark> docker-compose up -d <mark> pour démarer le conteneur
- Une fois le conteneur lancé, l'app peut être démarée en executant le fichier <mark> CovidApiApplication.java <mark> dans le dossier <mark> covid-api <mark>
- Un fichier <mark> test.http <mark> présent dans le même dossier contient différentes requêtes pour tester l'application
- executer la commande <mark> docker-compose down <mark> pour arrêter le conteneur