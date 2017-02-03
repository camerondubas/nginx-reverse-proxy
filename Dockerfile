FROM nginx
MAINTAINER Cameron Dubas <camerondubas@gmail.com>

COPY public /usr/share/nginx/html/
COPY cert /etc/ssl/
COPY snippets /etc/nginx/snippets/
COPY nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]