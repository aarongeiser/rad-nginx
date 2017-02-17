FROM nginx:1.10.3

RUN mkdir /etc/nginx/sites-enabled

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/mime.types /etc/nginx/mime.types
COPY ./config/sites-enabled /etc/nginx/sites-enabled

EXPOSE 80 443
CMD ["service", "nginx", "start"]