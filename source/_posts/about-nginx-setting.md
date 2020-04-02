---
title: Nginx配置
top: false
essential: false
notshow: false
copyright: true
abbrlink: 5e773fb
date: 2020-01-21 15:08:07
tags:
  - Nginx
categories:
  - Nginx
keywords: [Nginx配置]
password: xuxu....
description: 关于 Nginx 的一些配置。
---

配置文件内容如下：

```BASH

#user  nobody;
worker_processes  4;

#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;

#pid        logs/nginx.pid;


events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;

    #log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
    #                  '$status $body_bytes_sent "$http_referer" '
    #                  '"$http_user_agent" "$http_x_forwarded_for"';

    #access_log  logs/access.log  main;

    sendfile        on;
    #tcp_nopush     on;

    #keepalive_timeout  0;
    keepalive_timeout  65;

    #gzip  on;

    # HTTPS server
    #
    server {
        listen       443 ssl;
        server_name  hrinfo.wuxibiologics.com.cn;
		
		#配置ssl证书
        ssl_certificate      C:\static\ssl\2823310_hrinfo.wuxibiologics.com.cn.pem;
        ssl_certificate_key  C:\static\ssl\2823310_hrinfo.wuxibiologics.com.cn.key;

        ssl_session_cache    shared:SSL:1m;
        ssl_session_timeout  5m;

        ssl_ciphers  HIGH:!aNULL:!MD5;
        ssl_prefer_server_ciphers  on;
			
		#vue项目本地映射
		location /biologicsQuestionMob {
			root   C:\static\biologicsQuestionMob;
			try_files $uri $uri/ /index.html last;
			index  index.html;
		}

		#vue项目本地映射
		location /biologicsQuestionWeb {
			root   C:\static\biologicsQuestionWeb;
			try_files $uri $uri/ /index.html last;
			index  index.html;
		}

		#允许访问本地的静态文件后缀
		location ~ .*\.(html|htm|gif|jpg|jpeg|bmp|png|ico|txt|js|css|icon|ttf|woff)$ {
			root C:\static;
			index index.html;
		}
		
		#修改swagger静态文件请求路径（如果项目中修改路径无效，此处由于使用外部tomcat需要添加访问前缀，在项目中配置无效，所以由nginx对请求进行监听，并对请求重新代理）
		location ^~/webjars/ {
			
			proxy_set_header Host $host;
			
			proxy_set_header X-Real-IP $remote_addr;
			
			proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		
			proxy_set_header X-NginX-Proxy true;	
			proxy_pass http://127.0.0.1:8083/BiologicsQuestion/webjars/;

		}

		#修改swagger静态文件请求路径（如果项目中修改路径无效，此处由于使用外部tomcat需要添加访问前缀，在项目中配置无效，所以由nginx对请求进行监听，并对请求重新代理）
		location ^~/swagger-resources/ {
			
			proxy_set_header Host $host;
			
			proxy_set_header X-Real-IP $remote_addr;
			
			proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		
			proxy_set_header X-NginX-Proxy true;	
			proxy_pass http://127.0.0.1:8083/BiologicsQuestion/swagger-resources/;

		}

		#修改swagger静态文件请求路径（如果项目中修改路径无效，此处由于使用外部tomcat需要添加访问前缀，在项目中配置无效，所以由nginx对请求进行监听，并对请求重新代理）
		location ^~/v2/ {
			
			proxy_set_header Host $host;
			
			proxy_set_header X-Real-IP $remote_addr;
			
			proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		
			proxy_set_header X-NginX-Proxy true;	
			proxy_pass http://127.0.0.1:8083/BiologicsQuestion/v2/;

		}
		
		#修改swagger静态文件请求路径（如果项目中修改路径无效，此处由于使用外部tomcat需要添加访问前缀，在项目中配置无效，所以由nginx对请求进行监听，并对请求重新代理）
		location /swagger {
			
			proxy_set_header Host $host;
			
			proxy_set_header X-Real-IP $remote_addr;
			
			proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
			
			proxy_pass http://127.0.0.1:8083/BiologicsQuestion/doc.html;

		}

		#使用外部tomcat部署项目，并对项目进行代理
		location /biologicsQuestion {
			
			proxy_set_header Host $host;
			
			proxy_set_header X-Real-IP $remote_addr;
			
			proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
			
			proxy_pass http://127.0.0.1:8083/BiologicsQuestion;

		}
    }
}

```

使用的时候最好将中文注释去掉。
