FROM httpd:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["ab"]