library("moments")
# install.packages("moments")

x <- c(50, 10, 10)

skewness(x)

x <- rnorm(50, 10, 10)

skewness(X)
hist(X)

h <- hist(x,
    breaks = 10, col = "White", xlab = "X",
    main = "Histogram with Normal Curve"
)
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd = sd(x))
yfit <- yfit * diff(h & mids[1:2]) * length(x)

lines(xfit, yfit, col = "red", lwd = 2)