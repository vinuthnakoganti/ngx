FROM ubuntu
RUN apt-get update
RUN apt-get install apache2
RUN systemctl start apache2
COPY . /var/www/html/
RUN systemctl reload apache2