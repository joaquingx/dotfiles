#!/bin/sh
export "LD_PRELOAD=libcurl-openssl-1.0.so /usr/lib/openssl-1.0-compat/libssl.so /usr/lib/openssl-1.0-compat/libcrypto.so"
/usr/share/spotify/spotify "$@"
