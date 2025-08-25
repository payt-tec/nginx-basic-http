FROM nginx:1.25.3-alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN apk add apache2-utils
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]