FROM debian:buster
# update packages
# install nginx and open ssl
# issue sertificate: req - new key issue request  newket 4096 - key size x509 - key standart
# sha256 - crypto family of codes  days 63 -validity period -nodes disable key crypto tw
# verbose - for fun differ th eoutput tw

RUN apt-get -y update \
&& apt-get install -y nginx openssl \
&& openssl req -newkey rsa:4096 -x509 -sha256 -days 63 -nodes -verbose -out /etc/ssl/certs/nscarab.crt -keyout /etc/ssl/private/nscarab.key -subj "/C=RU/ST=Moscow/L=Moscow/O=42 School/OU=nscarab/CN=nscarab.42.fr"\
&& chmod -R 777 /etc/ssl/*

COPY ./default etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
# leave the main process on foreground to stop container from halting  tw
