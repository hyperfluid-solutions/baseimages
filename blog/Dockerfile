FROM r-base:4.4.1

RUN apt-get update
RUN apt-get install pandoc -y
RUN apt-get install --only-upgrade openssl -y
RUN apt-get install --only-upgrade vim -y

COPY ./src /usr/local/src
WORKDIR /usr/local/src

RUN Rscript install.R

LABEL org.opencontainers.image.source="https://github.com/hyperfluid-solutions/baseimages"

CMD [ "R" ]
