# Overview

Personal website hosted into https://raihan.com.bd


# Local Development

First, prepare base image by running these commands:
```bash
# Preparation
docker container rm $(docker ps -aqf "name=img_prep_jekyll_dev")
docker image rm jekyll:dev

# Build base image
docker run --name img_prep_jekyll_dev -v "$PWD:/code" -w /code -it ruby:latest bash
## Within docker container
gem update
gem update --system
gem install jekyll bundler
bundle update --bundler
exit

# Commit the container as base image
docker commit $(docker ps -aqf "name=img_prep_jekyll_dev") jekyll:dev
```

Then, start a container using the following command:
```bash
docker run --rm -p 8080:4000 -v "$PWD:/code" -w /code -it jekyll:dev bash

# Test versions
jekyll --version
bundle --version

# Install libs
bundle update
bundle install

# Start server
jekyll serve --host 0.0.0.0 --watch

# Open http://localhost:8080 to check the website
```

# Deployment

Using Github Actions only from `main` branch. In the `main` branch, `Gemfile` differs from **development** branch to ensure local development as well as github pages both can be served.

# Post prefix
* A: **A**nnouncement
* P: Development related **P**ost
* E: Sharing **E**xperience
