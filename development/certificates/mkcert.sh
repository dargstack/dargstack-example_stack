#!/bin/sh
THIS=$(dirname $(readlink -f "$0"))

mkcert \
-cert-file "$THIS/dargstack-example.crt" \
-ecdsa \
-key-file "$THIS/dargstack-example.key" \
    dargstack-example.test \
    "*.dargstack-example.test"
