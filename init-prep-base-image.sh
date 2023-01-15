# Stop container if exists
docker container rm $(docker ps -aqf "name=img_prep_jekyll_dev")

# Build base image
docker run --name img_prep_jekyll_dev -it ruby:latest gem install jekyll bundler

# Commit the container as base image
docker image rm $(docker ps -aqf "name=img_prep_jekyll_dev")
docker commit $(docker ps -aqf "name=img_prep_jekyll_dev") jekyll:dev

# Final cleanup
docker container rm $(docker ps -aqf "name=img_prep_jekyll_dev")