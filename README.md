# discourse-docker
Pretendo instance of discourse-docker, to make it a little more friendly to deploy as a container

It includes all the plugins that Pretendo runs.


## Choosing a version

Choosing a version is easy:
1. Pick a `supported` version from [the version list](https://releases.discourse.org/)
2. Insert the version in `assets/default.container.yml`


## How to build an image
Simply run `build.sh`, then build a container with `docker build -t hello-world .`. This is already done by the CI of this repository.

You need the following to properly host discourse:
- Postgresql
- Redis
- A transactional SMTP server

The environment variables you'll need at runtime (inspired by samples/web_only.yml):
```sh
# General env
DISCOURSE_HOSTNAME=forum.example.com

# Email
DISCOURSE_SMTP_ADDRESS=
DISCOURSE_SMTP_PORT=
DISCOURSE_SMTP_USER_NAME=
DISCOURSE_SMTP_PASSWORD=
DISCOURSE_SMTP_ENABLE_START_TLS=
DISCOURSE_SMTP_DOMAIN=
DISCOURSE_NOTIFICATION_EMAIL=

# Postgres
DISCOURSE_DB_SOCKET=
DISCOURSE_DB_USERNAME=
DISCOURSE_DB_PASSWORD=
DISCOURSE_DB_HOST=

# Redis
DISCOURSE_REDIS_HOST=
```

More details about hosting it:
- You need to mount `/shared` at a persistent location
- Port `80` is exposed in the container
