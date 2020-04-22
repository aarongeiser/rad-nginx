FROM nginx:1.17.10

RUN mkdir /etc/nginx/sites-enabled

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/mime.types /etc/nginx/mime.types
COPY ./config/sites-enabled /etc/nginx/sites-enabled

EXPOSE 80 443
CMD ["service", "nginx", "start"]