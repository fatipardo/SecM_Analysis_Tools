#!/usr/bin/Rscript


args <- commandArgs(trailingOnly = TRUE)
cat("Usage: covariance2correlation.R arg1=inputfile arg2=outputfile \n\n")
cat("Using file ", args[1], "\n")
x <- scan(args[1])
x <- matrix(x,sqrt(length(x)))
y <- cov2cor(x)
cat("Writing file ", args[2], "\n")
write(y,args[2],ncolumns=as.integer(args[3]))

