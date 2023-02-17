FROM httpd:latest

RUN apt-get update && \
    apt-get install -y apache2-utils

ENTRYPOINT ["ab"]