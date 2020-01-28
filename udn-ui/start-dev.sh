docker build -t local-httpd:local .
docker run --name httpd -d -v $(pwd)/dev-cert:/usr/local/apache2/cert -v $(pwd)/httpd-vhosts-dev.conf:/usr/local/apache2/conf/extra/httpd-vhosts.conf -p 80:80 -p 443:443 local-httpd:local

