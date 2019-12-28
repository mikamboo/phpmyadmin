FROM phpmyadmin/phpmyadmin

LABEL Author=mikamboo

COPY ./conf/apache2/ports.conf /etc/apache2/ports.conf

COPY ./conf/apache2/000-default.conf /etc/apache2/sites-enabled/000-default.conf

COPY install.sh /docker-install.sh

# Install phpmyadmin
RUN chmod +x /docker-install.sh && /docker-install.sh

# Override entrypoint script
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod 777 /docker-entrypoint.sh