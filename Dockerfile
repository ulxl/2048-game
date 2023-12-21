FROM nginx:alpine3.18

RUN apk update && apk add --no-cache git
RUN apk update
RUN rm -rf /usr/share/nginx/html/*
RUN git clone https://github.com/gabrielecirulli/2048.git /usr/share/nginx/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]