FROM r-base:4.4.1

RUN apt-get update
RUN apt-get install pandoc -y
RUN apt-get install --only-upgrade openssl -y
RUN apt-get install --only-upgrade vim -y

LABEL org.opencontainers.image.source="https://github.com/hyperfluid-solutions/baseimages"
LABEL org.opencontainers.image.vendor="Hyperfluid Solutions Corp."
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.authors="Hyperfluid Team hello@hyperfluidsolutions.com"

RUN R -e "install.packages('remotes',dependencies=TRUE, repos='http://cran.us.r-project.org')"
RUN R -e "remotes::install_version('blogdown', version = '1.19', repos = 'http://cran.us.r-project.org')"
RUN R -e "blogdown::install_hugo(version = '0.134.3', extended = TRUE)"

CMD [ "R" ]
