# Overview

Personal website hosted into https://raihan.com.bd


# Local Development

First, prepare base image by running this command:
```bash
./init-prep-base-image.sh
```

Then, start a container using the following command:
```bash
docker run --rm -p 8080:4000 -v "$PWD:/code" -w /code -it jekyll:dev ./entrypoint.sh
```

Go to http://localhost:8080 to check the website

# Deployment

Using Github Actions only from `main` branch. In the `main` branch, `Gemfile` differs from **development** branch to ensure local development as well as github pages both can be served.
