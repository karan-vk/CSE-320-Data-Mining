x <- c(77, 1, 2, 5, 4, 8, 887, 45, 485)
y <- c(99, 5, 4, 8, 66, 71, 3, 54, 46)

eucledian_distance <- function(x, y) {
    sqrt(sum(x - y)^2)
}
eucledian_distance(x, y)
