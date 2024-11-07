# SQL Basics

## Setup the repo

Prerequisites, install the following:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) or [Docker Engine](https://docs.docker.com/engine/install/)
- [PgAdmin 4](https://www.pgadmin.org/download/)

## Usage of the repo

- Start the postgres DB only: `npm run db`
- Start the db and the PgAdmin web interface: `npm run with-pgadmin` 

You only need to start the PgAdmin web interface if you
do not installed the separate PgAdmin 4 client.

### Connecting to the database

#### From the PgAdmin 4 Desktop Client

```
Host: localhost
User: postgres
Db: postgres
Password: dbpassword
Port: 5400
```

#### From the PgAdmin 4 web interface

Url to reach the web interface: [http://localhost:8070](http://localhost:8070)

To login the web interface: 

- Email: `postgres@postgres.dev`
- Password: `adminpassword`

Connect the database using the web interface (both running in docker compose):

```
Host: db
User: postgres
Db: postgres
Password: dbpassword
Port: 5432
```

## Tasks

You can find the tasks in the [./tasks.md](./tasks.md).