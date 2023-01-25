#! /bin/bash

jekyll --version 

bundle install 
bundle update 

jekyll serve --host 0.0.0.0 --watch