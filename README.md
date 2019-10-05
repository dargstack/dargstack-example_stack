# DargStack Example Stack

The Docker stack configuration for [dargstack-example.test](https://dargstack-example.com/).

This project is deployed in accordance to the [DargStack template](https://github.com/dargmuesli/dargstack_template/) to make deployment a breeze. It is closely related to [the website's source code](https://github.com/dargmuesli/dargstack-example/).


## Table of Contents

<!--1. **[Configurations](#configurations)**-->
1. **[Secrets](#secrets)**
1. **[Services](#services)**
1. **[Volumes](#volumes)**

<!--
## Configurations

- ### `[config_name]`
  The [config_name]'s configuration.
-->

## Secrets

- ### `postgres_db`:
  the database's name.

- ### `postgres_password`:
  the database's password.

- ### `postgres_user`:
  the database's default name.

- ### `traefik_cf-api-email`: ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
  the email address used with Cloudflare's API.

- ### `traefik_cf-api-key`: ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
  the key used with Cloudflare's API.


## Services

- ### `adminer`

  You can access the database's frontend at [adminer.dargstack-example.test](https://adminer.dargstack-example.test/).
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

  You can access the main project at [dargstack-example.test](https://dargstack-example.test/).

- ### `postgres`

  You can access the database via `adminer`.

- ### `postgres-backup`

  Backup service for `postgres`.

- ### `traefik`

  You can access the reverse proxy's dashboard at [traefik.dargstack-template.test](https://traefik.dargstack-template.test/).
  Traefik enables HTTPS for all services and acts as a load-balancer too.

- ### `traefik_certs-dumper` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)

  See [DargStack: certificates](https://github.com/dargmuesli/dargstack/blob/master/README-skeleton.md#certificates).


## Volumes

- ### `acme_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
  The certificate's data.

- ### `postgres_data`
  The database's data.
