# discourse-docker
Pretendo instance of discourse-docker, to make it a little more friendly to deploy as a container

It includes all the plugins that Pretendo runs.

## How to build an image
Simply run `build.sh`, then build a container with `docker build -t hello-world .`

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
