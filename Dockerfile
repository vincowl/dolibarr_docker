FROM tuxgasy/dolibarr
ENV PHP_INI_UPLOAD_SIZE 40M
RUN sed -i -e 's/memory_limit = ${PHP_INI_MEMORY_LIMIT}/memory_limit = ${PHP_INI_MEMORY_LIMIT}\n upload_max_filesize = ${PHP_INI_UPLOAD_SIZE}\n post_max_size= ${PHP_INI_UPLOAD_SIZE}/g' /usr/local/etc/php/conf.d/dolibarr-php.ini
