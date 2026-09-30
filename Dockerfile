FROM nginx:1.27

COPY app.txt /usr/share/nginx/html/index.html
COPY app-build.txt /usr/share/nginx/html/app-build.txt