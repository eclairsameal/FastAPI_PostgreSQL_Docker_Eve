# FastAPI_PostgreSQL_Docker_Eve

* The environment of a FastAPI docker project.

* Example of user login.

## Environment :

* Postgresql
* PgAdmin 4
* FastAPI
* Synchronization between container and local program

```
docker-compose up -d
```

## PgAdmin 4 Connecting to PostgreSQL

1. Open your browser and go to http://localhost:5050
2. Log in to PgAdmin 4 using the account and password set in docker-compose.yml (admin@example.com and admin).
3. Click Add New Server in the upper left corner, enter the server name, and set it under the Connection tab:
   * Host name/address：db
   * Port：5432
   * Username：myuser
   * Password：mypassword

## Test the Endpoints : 

### Using cURL

register Endpoint :

```bash
curl -X POST "http://localhost:8000/register" -H "Content-Type: application/json" -d '{
    "username": "testuser",
    "password": "testpassword"
}'
```

login Endpoint :
```bash
curl -X POST "http://localhost:8000/login" -H "Content-Type: application/json" -d '{
    "username": "testuser",
    "password": "testpassword"
}'
```