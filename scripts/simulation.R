path <- "/home/z0000000/coders/"

# extract n from the environment
n <- Sys.getenv("n")
# convert to a number
n <- as.numeric(n)
print(paste("n =", n))

# create a unique id to save the output
# based on the current time
time.start <- Sys.time()
run <- format(time.start, format = '%Y%d%m_%H%M%S')
print(paste("run:", run))

# simulate some data
x <- rnorm(n, mean = 0.5, sd = 1)

# run a t test
# we expect to see a significant result because
# the true mu is different from the hypothesised mu
out <- t.test(x, mu = 0)
print(out)

# save out the p-value
pval <- out$p.value
saveRDS(pval, file = paste0(path, "pval_", run, ".RDS"))
