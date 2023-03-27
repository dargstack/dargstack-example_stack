# dargstack-example_stack


The Docker stack configuration for [dargstack-example.jonas-thelemann.de](https://dargstack-example.jonas-thelemann.de/).

This project is deployed in accordance to the [DargStack template](https://github.com/dargstack/dargstack_template/) to make deployment a breeze. It is closely related to [dargstack-example's source code](https://github.com/dargstack/dargstack-example/).

## Table of Contents


 1. [secrets](#secrets)
    
 2. [services](#services)
    
 3. [volumes](#volumes)
    

## secrets


 - ### `postgres-backup_db` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The database names that are to be backed up.
    
 - ### `postgres_db`
    
    The database's name.
    
 - ### `postgres_password`
    
    The database default user's password.
    
 - ### `postgres_user`
    
    The database default user's name.
    
 - ### `traefik_cf-dns-api-token` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DNS provider's DNS API token.
    
 - ### `traefik_cf-zone-api-token` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DNS provider's zone API token.
    

## services


 - ### `adminer`
    
    You can access the database's frontend at [adminer.localhost](https://adminer.localhost/).
    This information is required for login:
    
    |          |                     |
    | -------- | ------------------- |
    | System   | PostgreSQL          |
    | Server   | postgres            |
    | Username | [postgres_user]     |
    | Password | [postgres_password] |
    | Database | [postgres_db]       |
    
    Values in square brackets are [Docker secrets](https://docs.docker.com/engine/swarm/secrets/).
    
 - ### `dargstack-example`
    
    You can access the main project at [localhost](https://localhost/).
    
 - ### `postgres`
    
    You can access the database via `adminer`.
    
 - ### `postgres_backup` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    Backup service for `postgres`.
    
 - ### `traefik`
    
    You can access the reverse proxy's dashboard at [traefik.localhost](https://traefik.localhost/).
    Traefik enables HTTPS for all services and acts as a load-balancer too.
    
 - ### `traefik_certs-dumper` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    See [DargStack: certificates](https://github.com/dargstack/dargstack/blob/master/README-skeleton.md#certificates).
    

## volumes


 - ### `acme_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The reverse proxy's certificate data.
    
 - ### `postgres_data`
    
    The database's data.
    

