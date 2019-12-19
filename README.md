# README
We always need easy and fast database env setting for rails
docker-postgres gem builded for develop database enviroment

### Require
* macOS or linux (Not support window, using mkdir)
* Installed Docker
* database.yml in rails project (needed database, username, password, port)

# Install
### Install in Gemfile
Gemfile
```yaml
gem 'docker-postgres', :git => "git://github.com/x1wins/docker-postgres.git"
```

### Or Source download and gem build 
```bash
$ gem build docker-postgres.gemspec 
Successfully built RubyGem
Name: docker-postgres
Version: 0.0.0
File: docker-postgres-0.0.0.gem
```
```bash
$ gem install docker-postgres
Successfully installed docker-postgres-0.0.0
Parsing documentation for docker-postgres-0.0.0
Done installing documentation for docker-postgres after 0 seconds
1 gem installed
```
Added docker-postgres in Gemfile
```yaml
gem 'docker-postgres'
```

Uninstall gem
```bash
$ gem uninstall docker-postgres
Successfully uninstalled docker-postgres-0.0.0
```

# Usage
### Step 0
```bash
rails generate docker_pg
This will create:
  lib/tasks/docker_pg.rake
```

### Step 1
You must set database.yml
```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: docker_postgres_development
  username: docker_postgres
  password: mysecretpassword
  host: localhost
  port: 5432

test:
  <<: *default
  database: docker_postgres_test

production:
  <<: *default
  database: docker_postgres_production
  username: docker_postgres
  password: <%= ENV['DOCKER_POSTGRES_DATABASE_PASSWORD'] %>
```

### Step 2
This command create database volume path
```bash
$ rake docker:pg:init
```

### Step 3
Runing dockerized PostgreSQL 
```bash
$ rake docker:pg:run
```
```bash
$ docker ps 
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
4ec621c7914b        postgres            "docker-entrypoint.s…"   17 minutes ago      Up 17 minutes       0.0.0.0:5432->5432/tcp   docker_postgres_development
```

## It's all
