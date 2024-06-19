#=========================================================================#
# Default Web Domain Template                                             #
# DO NOT MODIFY THIS FILE! CHANGES WILL BE LOST WHEN REBUILDING DOMAINS   #
# https://hestiacp.com/docs/server-administration/web-templates.html      #
#=========================================================================#

server {
        listen      %ip%:%web_port%;
        server_name %domain_idn% %alias_idn%;
        root        %sdocroot%;
        location ~ /\.(?!well-known\/) {
                deny all;
                return 404;
        }

        location ~ /.well-known {
                allow all;
        }

        location / {
                root %home%/%user%/web/%domain%/public_html/MyApp/build;
                try_files $uri $uri/ /index.html;
        }

        location /api {
                proxy_pass http://127.0.0.1:4000/apiendpoint;
                proxy_set_header Host $host;
                proxy_set_header X-Forwarded-For $remote_addr;
        }

        location /error/ {
                alias %home%/%user%/web/%domain%/document_errors/;
        }

        include /etc/nginx/conf.d/phpmyadmin.inc*;
        include /etc/nginx/conf.d/phppgadmin.inc*;
        include %home%/%user%/conf/web/%domain%/nginx.conf_*;
}
