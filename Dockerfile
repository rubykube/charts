FROM debian:latest

RUN groupadd web
RUN useradd -g web -m web

ADD . /home/web
RUN chown web /home/web -R
USER web

WORKDIR /home/web

EXPOSE 8080
