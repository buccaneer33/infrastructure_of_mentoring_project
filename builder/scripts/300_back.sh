git clone $4 $1/back && \
#mv $1/start.sh $1/back/rundoctrine.sh  && \
cd $1/back && \
chmod 755 .env && \
chmod 755 start.sh && \
#ls -al &&\
composer install --no-plugins --no-scripts #&& \
#ls -al