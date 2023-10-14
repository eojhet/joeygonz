server {  
        listen 80 default_server;
        location / {  
                proxy_pass https://localhost:3000;  
                proxy_http_version 1.1;  
                proxy_set_header Upgrade $http_upgrade;  
                proxy_set_header Connection 'upgrade';  
                proxy_set_header Host $host;  
                proxy_cache_bypass $http_upgrade;  
        }  
}