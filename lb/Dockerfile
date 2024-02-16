FROM ubuntu:22.04

RUN apt update
RUN apt install -y nginx
RUN apt install -y git
Run apt install telnet



EXPOSE 80



COPY start.sh .
RUN chmod 777 start.sh .
CMD start.sh;
