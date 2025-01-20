FROM dolibarr/dolibarr
ENV PHP_INI_UPLOAD_SIZE 40M
RUN sed -i -e 's/memory_limit = ${PHP_INI_MEMORY_LIMIT}/memory_limit = ${PHP_INI_MEMORY_LIMIT}\n upload_max_filesize = ${PHP_INI_UPLOAD_SIZE}\n post_max_size= ${PHP_INI_UPLOAD_SIZE}/g' /usr/local/bin/docker-run.sh
RUN sed -i -e 's|//config.entities = false;|config.entities = false;|g' \
           -e 's|//config.entities_greek = false;|config.entities_greek = false;\n config.entities_latin = false;|g' \
           /var/www/html/theme/eldy/ckeditor/config.js

