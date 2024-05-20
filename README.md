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
3) adjust the .env file according your needs
   set app key ```APP_KEY=your_key_goes_here```
4) install dependenses
   ```
   composer install
   ```
5) build front-end assets
    ```
    npm run build
    ```  
6) start docker containers
   ```
   docker compose up
   ```
7) Open [localhost](http://localhost) in your browser
