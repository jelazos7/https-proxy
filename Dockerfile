FROM shiva:8150/jpnh/nginx-php-arm64

# OpenSSL cert signing
COPY openssl/* /etc/ssl/

# Scripts
COPY scripts/* /

