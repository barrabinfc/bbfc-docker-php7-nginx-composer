#!/bin/bash
echo "========================="
echo "= Composer install: "
composer update
composer install
echo "========================="

exec "sh $(pwd)/setup.sh"
source ~/.bash_profile