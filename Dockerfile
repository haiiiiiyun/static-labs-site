FROM nginx:alpine
COPY ./out /app/ai-labs
COPY ./nginx/default.conf /etc/nginx/conf.d/

## SSL version
# COPY ./nginx/default_ssl.conf /etc/nginx/conf.d/
# COPY ./nginx/server.pem /etc/ssl/
# COPY ./nginx/server.key /etc/ssl/

CMD ["nginx", "-g", "daemon off;"]
