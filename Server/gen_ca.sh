# Generate a private key
openssl genrsa -out private.key 2048

# Create a certificate signing request (CSR)
openssl req -new -key private.key -out cert.csr

# Self-sign the CSR (10 years)
openssl x509 -req -in cert.csr -signkey private.key -out cert.pem -days 3650