# FastAPI_PostgreSQL_Docker_Eve
The environment of a FastAPI docker project

## Environment :

* Postgresql
* PgAdmin 4
* FastAPI
* Synchronization between container and local program

## Database :

### PgAdmin 4 Connecting to PostgreSQL

1. Open your browser and go to http://localhost:5050
2. Log in to PgAdmin 4 using the account and password set in docker-compose.yml (admin@example.com and admin).
3. Click Add New Server in the upper left corner, enter the server name, and set it under the Connection tab:
   * Host name/address：db
   * Port：5432
   * Username：myuser
   * Password：mypassword

### SQL : 
```
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(100) NOT NULL
);
```

## Example Project : 

```
pip install databases asyncpg bcrypt
```

Example of user login

