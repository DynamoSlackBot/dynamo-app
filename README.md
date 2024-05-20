# Dynamo demo app

## Install with docker-compose

You should have Docker and Node.js installed on your environment.

1) clone repo
   ```
   git clone  https://github.com/DynamoSlackBot/dynamo-app
   ```
2) create the .env file
   ```
   cd dynamo-app && cp .env.example .env
   ```
3) adjust the .env file according your needs
4) start docker containers
   ```
   docker compose up
   ```
5) build front-end assets
    ```
    npm run build
    ```  
6) Open [localhost](http://localhost) in your browser
