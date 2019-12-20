## README
When we begin new rails project,<br/>
always need easy, fast database setting<br/>
Docker-postgres-rails gem easy, fast run PostgreSql database by docker without docker command and many environment var

## Required
* Your OS must be macOS or linux (Not support window, because using mkdir)
* Installed Docker
* Rails project must use PostgreSql (You can create new project using postgresql by this command : ```$ rails new [PORJECT_NAME] -d postgresql``` )
* Your must input values of database, username, password, port in config/database.yml file (docker will use these values) 

## Getting Started
1. Add gem in Gemfile
   https://rubygems.org/gems/docker-postgres-rails
   ```yaml
   gem 'docker-postgres-rails', '~> 0.0.1'
   ```
   OR
   ```yaml
   gem 'docker-postgres-rails', :git => "git://github.com/x1wins/docker-postgres-rails.git"
   ```

2. Generate docker_pg.rake
   ```bash
   $ rails generate docker_pg
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

4. Create database volume path
   ```bash
   $ rake docker:pg:init
   ```

5. Run dockerized PostgreSQL
   ```bash
   $ rake docker:pg:run
   ```
   ```bash
   $ docker ps
   CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
   4ec621c7914b        postgres            "docker-entrypoint.s…"   17 minutes ago      Up 17 minutes       0.0.0.0:5432->5432/tcp   docker_postgres_rails_development
   ```

## It's all
