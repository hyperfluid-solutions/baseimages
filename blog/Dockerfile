FROM r-base:4.4.1

RUN apt-get update
RUN apt-get install pandoc -y

COPY ./src /usr/local/src
WORKDIR /usr/local/src

RUN Rscript install.R

LABEL org.opencontainers.image.source="https://github.com/hyperfluid-solutions/baseimages"
LABEL org.opencontainers.image.vendor="Hyperfluid Solutions Corp."
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.authors="Hyperfluid Team hello@hyperfluidsolutions.com"

CMD [ "R" ]
