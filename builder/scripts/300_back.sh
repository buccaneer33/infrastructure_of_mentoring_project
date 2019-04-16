git clone $4 $1/back && cd $1/back && chmod 755 .env && ls -al && composer install --no-plugins --no-scripts && \
sudo php bin/console doctrine:database:create --if-not-exists && php bin-console doctrine:schema:update --force && \
sudo php bin/console doctrine:fixtures:load -q