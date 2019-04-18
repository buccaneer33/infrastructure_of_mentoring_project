git clone $4 $1/back && \
cd $1/back && \
chmod 755 .env && \
chmod 755 start.sh && \
composer install --no-plugins --no-scripts