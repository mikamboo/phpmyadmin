FROM phpmyadmin/phpmyadmin

LABEL Author=mikamboo

COPY ./conf/apache2/ports.conf /etc/apache2/ports.conf

COPY ./conf/apache2/000-default.conf /etc/apache2/sites-enabled/000-default.conf