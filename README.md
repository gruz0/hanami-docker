# Dockerize your Hanami applications

Dockerfile uses Ruby 2.5 Alpine as a base image and
PostgreSQL 10.4 Alpine as a linked container.

**Useful commands:**
1. `make dockerize` – build image and run application on 2300 port
2. `make shell` – enter inside container
3. `make shutdown` – stop container

If you want to create database and run migrations you must simple use:
1. `make shell`
2. `hanami db prepare`
3. `hanami db migrate`

### Step 1

Copy `Dockerfile`, `docker-compose.yml` and `Makefile` into your Hanami root directory.

### Step 2

Replace `DATABASE_URL` in your `.env.development` with:

```yaml
DATABASE_URL="postgresql://postgres:example@db/your_project_development
```

Replace `DATABASE_URL` in your `.env.test` with:

```yaml
DATABASE_URL="postgresql://postgres:example@db/your_project_test
```

### Step 3

Run `make dockerize` in your terminal.

### Final step
Open [http://localhost:2300](http://localhost:2300) in your browser! :beer:
