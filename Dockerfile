FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN apk add --no-cache curl

EXPOSE 80 8000

CMD ["nginx", "-g", "daemon off;"]