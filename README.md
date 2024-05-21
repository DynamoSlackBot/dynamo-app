# Dynamo demo app

## Install with docker-compose

You should have Docker, php composer, and Node.js installed on your environment.

1) clone repo
   ```
   git clone  https://github.com/DynamoSlackBot/dynamo-app
   ```
2) create the .env file
   ```
   cd dynamo-app && cp .env.example .env
   ```
3) install dependenses
   ```
   composer install
   ```
   ```
   npm install
   ```
4) build front-end assets
    ```
    npm run build
    ```  
5) start docker containers
   ```
   docker compose up
   ```
6) Open [localhost](http://localhost) in your browser
