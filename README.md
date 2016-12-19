# HTTPS Proxy

Creates a container to serve as an https proxy.

## Building the Image

You must supply an RSA private key as the "cakey" build arg. A self-signed CA certificate will be generated from the key when the image is built. The proxy with authenticate itself using this CA.

## Generating client certs

Execute /client-cert against a running container and follow the instructions. A PEM will be written out to STDOUT. Copy the PEM contents into its own file. You may need to convert to PKCS12 to use in applications:

```
openssl pkcs12 -export -out client.p12 -in client.pem
```
