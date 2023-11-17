# Build Projet Java Gradle

## Conditions préalables au build : 
- Avoir au moins docker et Postgresql d'installés pour build l'app en local
- Créer manuellement une base de données postgresql *covid-db-mep* avec un  utilisateur ayant pour login et mot de passe *postgres*


## Etapes pour build l'application en local : 

- ouvrir un terminal au dossier **TD2-Mise-en-Prod**
- executer la commande **docker build -t *NomImage* .**
- executer la commande **docker-compose up -d** pour démarer le conteneur
- Une fois le conteneur lancé, l'app peut être démarée en executant le fichier **CovidApiApplication.java** dans le dossier **covid-api**
- Un fichier **test.http** présent dans le même dossier contient différentes requêtes pour tester l'application
- executer la commande **docker-compose down** pour arrêter le conteneur

## Etapes pour build l'application avec Jenkins : 

- ouvrir un terminal au dossier **jenkins-compose**
- executer la commande **docker-compose up -d** pour démarer Jenkins
- Aller à l'adresse http://localhost:8001 pour accéder à l'interface Jenkins