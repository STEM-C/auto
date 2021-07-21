#!/bin/sh

set -e

if [[ "$#" != 3 ]];
then 
    echo "Expecting 3 arguments, got $#!"
    exit 0
fi;

#image_tag=$1
#app_name=$2
github_token=$3

gpr_base="docker.pkg.github.com/stem-c/casmm"
#heroku_base="registry.heroku.com/$app_name"

# Test
 docker-compose up -d
 ready=false
 do
     ready=docker-compose logs | grep "strapi ready"
 while ("$ready" = false)
 cd test 
 yarn functional
 yarn integration
 yarn performance

