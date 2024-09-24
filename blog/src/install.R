#!/usr/bin/env Rscript

install.package("remotes")

require(remotes)
# Blogdown versions:
# https://github.com/rstudio/blogdown/releases
install_version("blogdown", "1.19" repos = "http://cran.us.r-project.org")

require(blogdown)
install_hugo(version: "latest", extended: TRUE)
