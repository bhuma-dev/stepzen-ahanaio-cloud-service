# StepZen PrestoDB using Ahana.io
StepZen GraphQL API running on top of Ahana PrestoDB

## Usage

Install the StepZen CLI: `npm install -g stepzen@0.29.0`

### Install direnv

Configure `direnv` to handle environment variables. [direnv](https://direnv.net/)  is an extension for your shell. It augments existing shells with a new feature that can load and unload environment variables depending on the current directory.

### Cloud

Is important to mention that is required to logout when changing from Cloud to Local, and vice versa.

1. Login with your [account credentials](https://stepzen.com/account) typing: `stepzen login`
2. Type `npm run start` and 🚀!

### Local

Is important to mention that is required to logout when changing from Cloud to Local, and vice versa.

1. Type `npm run start:local`.
2. Follow the instructions to log-in with your local Docker, it should looks like something like this: `stepzen login --config ~/.stepzen/stepzen-config.local.yaml`
3. Type `npm run start` and 🚀!

## Useful Commands

### Explore StepZen import command:

```sh
stepzen import curl --help
```

# Docker image

## Build

```sh
docker build . \
  -t bhuma/stepzen-ahanaio-prestodb:latest  \
  -t bhuma/stepzen-ahanaio-prestodb:v1.0.0
```

## Run

```sh
docker run \
    -p 5050:5000 \
    --env STEPZEN_ADMIN_KEY=${STEPZEN_ADMIN_KEY} \
    bhuma/stepzen-ahanaio-prestodb
```

## Push image with all tags to Docker Hub

```sh
docker push bhuma/stepzen-ahanaio-prestodb --all-tags
```


# Run Ahana / Presto locally

```bash
docker run -it \
  -p 8080:8080 \
  -v connectors/postgresql.properties:/opt/presto-server/etc/catalog/postgresql.properties \
  ahanaio/prestodb-sandbox
```
