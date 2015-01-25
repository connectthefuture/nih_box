#!/usr/bin/env Rscript
options(repos = c(CRAN = "http://cran.rstudio.com"))
install.packages(c("lme4",
                   "arm",
                   "MCMCpack",
                   "mvtnorm",
                   "spdep",
                   "distr",
                   "spatialprobit",
                   "Matrix",
                   "stringr"),
                 dependencies = TRUE)
