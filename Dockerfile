FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 && apt-get clean 
COPY ./efficenz.properties /var/www/html. 
ADD test /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
