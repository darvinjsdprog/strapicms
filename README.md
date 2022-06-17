# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/developer-docs/latest/developer-resources/cli/CLI.html) (CLI) which lets you scaffold and manage your project in seconds.
For the Docker implementation of Strapi V4: [Strapi with Docker](https://blog.dehlin.dev/docker-with-strapi-v4)

### `start`

create .env file in the root
with this content

```
HOST=0.0.0.0
PORT=1337
APP_KEYS=
API_TOKEN_SALT=
ADMIN_JWT_SECRET=
JWT_SECRET=

DATABASE_HOST=localhost
DATABASE_PORT=5432
DATABASE_NAME=strapi
DATABASE_USERNAME=strapi
DATABASE_PASSWORD=
NODE_ENV=development
DATABASE_CLIENT=postgres
```

To run strapi inside a docker container and postgres in its own container run:

```
docker-compose up -d
```

Navigate to http://localhost:1337/admin
this will open a strapi instance with meta content types created.
