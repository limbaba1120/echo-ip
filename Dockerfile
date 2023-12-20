# Origin From https://github.com/PokerCoder/RockPaperScissors
# Only use for school project  

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

LABEL Name=echo-ip Version=0.0.5
COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/conf.d/cert.crt
COPY cert.key /etc/nginx/conf.d/cert.key

COPY . .

CMD ["nginx", "-g", "daemon off;"]