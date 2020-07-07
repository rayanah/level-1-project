FROM alpine:latest

EXPOSE 80 

RUN apk add docker-compose make bash git

RUN git clone https://github.com/rayanah/level-1-project 

WORKDIR /level-1-project

ENTRYPOINT ["/usr/bin/make"]

cmd ["level-1-project"]
