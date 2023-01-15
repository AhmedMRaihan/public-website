# Overview

Personal website hosted into https://raihan.com.bd


# Local Development

First, prepare base image by running this command:
```bash
./init-prep-base-image.sh
```

Then, start a container using the following command:
```bash
docker run --rm -p 4000:4000 -v "$PWD:/code" -w /code -it jekyll:dev ./entrypoint.sh
```