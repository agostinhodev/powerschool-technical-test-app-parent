# Power School - App Parent

## Goal of this test

The goal of this test is to provide a simple application that lists all the countries in the world. For this purpose, a backend has been developed to serve a REST API for the country list.

## Technologies

### Backend

- Nest.JS

### Frontend

- Chakra UI
  Axios
  Next.JS
  React

### Testing libraries

- Jest
- Cypress

All using Typescript

## Introduction

The purpose of this application's parent repository is to clone all its constituent projects, including both the backend and front-end, into a single, unique folder. This facilitates the ability to clone, install, and run the application with a single command.

## Installation

1. Clone this repository using the following command:

```bash
git clone git@github.com:agostinhodev/powerschool-technical-test-app-parent.git app-parent
```

2. Navigate into the cloned directory:

```bash
cd app-parent
```

3. Make the start.sh script executable:

```bash
chmod +x start.sh
```

This will clone the submodules and start Docker. Depending on the size of the submodules and your internet connection speed, this may take some time.
By following these instructions, you should be able to install and run the repository with its submodules and Docker dependencies.

## Running in development mode

1. Run the `start.sh` script by executing the following command:

```bash
./start.sh --development
```

2. The `--development` flag will create the docker containers in development mode. In this case, the Dockerfile will not copy any file inside image, but we'll map the host folders inside container folder. It will allow us not install anything in our machine, just install the Docker.

3. Note: in this case, the containers can be a bit more lazy to start because we need to install the dependencies with yarn from container built time. To follow the containers availability, please run:

### Backend:

```bash
docker logs -f powerschool-technical-test-backend-development -f
```

### Frontend:

```bash
docker logs -f powerschool-technical-test-frontend-development -f
```

### Routes and services

### Frontend (UI)

1. If you want to open the frontend (UI), please go to `http://localhost:3001`

### Backend (API)

1. If you want to open the backend (API), please go to http://localhost:3000. It will return a web page saying Hello from PowerSchool technical test!
2. But if you open http://localhost:3000/autocomplete, it will return the autocomplete countries list without a filter.
3. To filter a country, please pass a query string ?name=BRAZIL (or other country name you prefer)

## Running in production mode

In production mode, we will COPY all project inside a new Docker image. So, in this case, we do not have volumes to manage.

1. Run without `--development` flag as well:

```bash
./start.sh
```

2. In production mode, the application ports are different. So, you should use:

- Backend (API): http://localhost:8080/
- Frontend (UI): http://localhost/

## Running tests

You can run tests in development mode. To do this, please follow the steps below:
Please make sure you are running in the `--development` mode.

### Backend

1. Run unit and integration tests: `docker exec -it powerschool-technical-test-backend-development yarn test`
2. Run e2e tests: `docker exec -it powerschool-technical-test-backend-development yarn test:e2e`

### Frontend

1. Run unit and integration tests: `docker exec -it powerschool-technical-test-frontend-development yarn test`

### Run e2e tests with cypress:

Just in this case you must have yarn or npm installed in your host machine, because cypress needs to open a browser UI to run the tests. So, dot the following:

1. Go to `frontend` folder

```bash
cd ./frontend
```

2. Run:

```bash
yarn run cypress open
```
