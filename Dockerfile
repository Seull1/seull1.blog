FROM ubuntu:22.04

RUN apt update
RUN apt install -y nginx
RUN apt install -y git
RUN apt install cron

RUN rm -rf var/www/html
RUN git clone https://github.com/Seull1/seull1.blog.git /var/www/html

COPY pull.sh /var/www/html
Copy blog-pull-cronjob /etc/cron.d/
RUn crontab /etc/cron.d/blog-pull-cronjob


#CMD ["nginx", "-g", "daemon off;"]
CMD service cron start;nginx -g 'daemon off;'
