FROM mprasil/dokuwiki
RUN apt-get update && apt-get install -y php-sqlite3
RUN cd /dokuwiki && \
    chmod 700 data bin inc data conf vendor && \
    chmod 400 .htaccess.dist
RUN rm /dokuwiki/vendor/splitbrain/php-archive/phpunit.xml
RUN echo '$HTTP["request-method"] =~ "^(PUT|DELETE|TRACE)$" {url.access-deny = ( "" ) }' >> /etc/lighttpd/conf    -available/20-dokuwiki.conf
