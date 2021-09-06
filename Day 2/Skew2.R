x <- c(30, 31, 32, 33, 40)
skewness(x)
hist(x)
h <- hist(x,
    breaks = 10, col = "Green", xlab = "X",
    main = "Histogram with Normal Curve"
)
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd = sd(x))
yfit <- yfit * diff(h$mids[1:2]) * length(x)
lines(xfit, yfit, col = "blue", lwd = 2)