#!/bin/sh
HOST=${HOST:-localhost}
EMAIL=${EMAIL:-name@example.com}

cat << EOF > /etc/Caddyfile
$HOST
gzip

root /var/www/html

log stdout

errors {
    log stdout
}
mime .vcf /application/octet-stream
EOF

caddy --conf /etc/Caddyfile --agree --email $EMAIL
