server {

    # Permanent redirect to non-www
    
    listen 80;
    server_name www.joeygonz.com;

    rewrite ^/(.*)$ http://joeygonz.com/$1 permanent;

 }

 server {

    # Permanent redirect to non-www

    listen 443;
    server_name www.joeygonz.com;

    rewrite ^/(.*)$ https://joeygonz.com/$1 permanent;

 }