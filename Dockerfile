FROM shiva:8150/jpnh/nginx-php-arm64

# Path to the CA key
ARG cakey
# Path to the nginx default.conf
ARG defaultconf

# OpenSSL cert signing
COPY openssl/* /etc/ssl/
COPY $cakey /etc/ssl/private/ca.key

RUN cd /etc/ssl; openssl req -new -x509 -days 365000 -key private/ca.key -config openssl.ca.cnf -out certs/ca.crt

# Scripts
COPY scripts/* /

# Nginx conf
COPY $defaultconf /etc/nginx/conf.d/


