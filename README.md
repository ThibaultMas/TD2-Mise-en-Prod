# Build Projet Java Gradle

## Conditions préalables au build : 
- Avoir au moins docker et Postgresql d'installés pour build l'app en local
- Créer manuellement une base de données postgresql *covid-db-mep* avec un  utilisateur ayant pour login et mot de passe *postgres*


## Etapes pour build l'application en local : 

- ouvrir un terminal au dossier **TD2-Mise-en-Prod**
- executer la commande **docker compose up -d** pour démarer le conteneur
- Une fois le conteneur lancé, l'app peut être démarée en executant le fichier **CovidApiApplication.java** dans le dossier **covid-api**
- Un fichier **test.http** présent dans le même dossier contient différentes requêtes pour tester l'application
- executer la commande **docker-compose down** pour arrêter le conteneur

## Etapes pour build l'application avec Jenkins : 

- ouvrir un terminal au dossier **jenkins-compose**
- executer la commande **docker-compose up -d** pour démarer Jenkins
- Aller à l'adresse http://localhost:8001 pour accéder à l'interface Jenkins
- Une fois sur le **Tableau de bord**, accéder à la section **Administrer Jenkins** -> **Plugins**, et vérifier la présence des plugins **Docker plugin** et **Docker Pipeline** (installer et activer dans le cas où ils ne sont pas présents)
- Dans le **Tableau de bord**, cliquer sur **Nouveau Item** et choisir **Pipeline**
- Configurer le pipeline en choisissant **Pipeline script from SCM** et mettre l'url du repository : https://github.com/ThibaultMas/TD2-Mise-en-Prod.git
- Sauver la configuration de l'item
- Appuyer sur **Lancer un build**