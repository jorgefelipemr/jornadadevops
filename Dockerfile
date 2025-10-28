FROM nginx:alpine

COPY app-test/index.html /usr/share/nginx/html/index.html
