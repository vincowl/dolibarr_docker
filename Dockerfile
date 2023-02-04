FROM tuxgasy/dolibarr
ENV PHP_INI_UPLOAD_SIZE 40M
RUN echo 'upload_max_filesize = ${PHP_INI_UPLOAD_SIZE}' >> /usr/local/etc/php/conf.d/dolibarr-php.ini
RUN echo 'post_max_size= ${PHP_INI_UPLOAD_SIZE}' >> /usr/local/etc/php/conf.d/dolibarr-php.ini
