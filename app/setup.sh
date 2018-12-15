#!/bin/sh
set -eu pipefail

# Wp-cli
# Install wp-cli
#echo "========================="
#echo "= wp-cli install: "
#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
#php wp-cli.phar --info;
#chmod +x wp-cli.phar;
#mv wp-cli.phar /usr/local/bin/wp-cli;
#wp-cli --allow-root --version;
#rm -rf wp-cli.phar;
#echo "====================================="

echo "========================="
echo "= Settings wp-config using wp-cli"
wp_extra=`cat ${WORDPRESS_CONFIG_EXTRA}`
wp config create --dbname=${WORDPRESS_DB_DATABASE} --dbuser=${WORDPRESS_DB_USER} \
                 --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} \
                 --extra=$wp_extra
echo "========================="

# Echo 
echo "=======Helpers and alias=========="
echo 'alias wp="wp-cli --path=$(pwd)/wordpress"' >> ~/.bashrc
echo "=======Helpers and alias=========="