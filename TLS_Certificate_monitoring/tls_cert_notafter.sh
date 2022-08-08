#!/bin/bash
#
#/ Usage: $0 HOST PORT
#/
#/ This script returns the notAfter date of the TLS certificate on HOST:PORT
#/ in Unix epoch notation (number of seconds since Jan 1, 1970).
#/
#/ No input validation is done.

timeout 5 openssl s_client \
        -servername "$1" -host "$1" -port "$2" -tls1_2 </dev/null 2>/dev/null | \
        openssl x509 -noout -dates | \
        grep ^notAfter= | \
        cut -d= -f2- | \
        date -f - '+%s'

