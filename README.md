# README
We always need easy and fast database env setting for rails
docker-postgres gem builded for develop database enviroment

## Require
* macOS or linux (Not support window, using mkdir)
* Installed Docker
* database.yml in rails project (needed database, username, password, port)

## Getting Started
1. Add gem in Gemfile
```yaml
gem 'docker-postgres-rails', '~> 0.0.1'
```
OR
```yaml
gem 'docker-postgres-rails', :git => "git://github.com/x1wins/docker-postgres-rails.git"
```
https://rubygems.org/gems/docker-postgres-rails

2. Generate docker_pg.rake
```bash
rails generate docker_pg
   identical  lib/tasks/docker_pg.rake
```

3. Set database, username, password, port in database.yml,<br/>
Docker will use database, username, password, port in database.yml
```yaml
  database: docker_postgres_rails_development
  username: docker_postgres_rails
  password: mysecretpassword
  host: localhost
  port: 5432
```

4. This command create database volume path
```bash
$ rake docker:pg:init
```

5. Runing dockerized PostgreSQL
```bash
$ rake docker:pg:run
```
```bash
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
4ec621c7914b        postgres            "docker-entrypoint.s…"   17 minutes ago      Up 17 minutes       0.0.0.0:5432->5432/tcp   docker_postgres_rails_development
```

## It's all
