# TD2-Mise-en-Prod

- gradle wrapper
- ./gradlew build (Mac) ou gradlew.bat build (Windows)
- ouvrir un terminal dans le dossier 'libs' qui a été crée
- executer java -jar covid-api-0.0.1-SNAPSHOT.jar
- docker build -t imagetest .
- docker run -it imagetest
- Utiliser 'docker-compose up -d' à la place de 'docker run' une fois le docker-compose.yaml configuré
- arrêter le conteneur avec 'docker-compose down -v'