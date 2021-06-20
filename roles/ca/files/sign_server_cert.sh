#! /bin/bash

SAN=DNS:vpn.magicfish.dev openssl req -new -config ./server-cert.cnf -out certs/vpn.magicfish.dev.csr -keyout certs/vpn.magicfish.dev.key
openssl ca -batch -config ./signing-ca.cnf -in certs/vpn.magicfish.dev.csr -out certs/vpn.magicfish.dev.crt -extensions server_ext