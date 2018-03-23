FROM phpdrone/composer:php72-latest
RUN composer global require gboddin/php-github-cli:dev-master --update-no-dev 
ENTRYPOINT [ "php", "/root/.composer/vendor/bin/ghcli" ]
