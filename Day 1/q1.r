age <- c(45, 89, 23)
marital_status <- c("Married", "Unmarried", "Divorce")
quality <- c("Excellent", "Good", "Poor")
time_spent <- c(100, 80, 60)
num_of_people <- c(2, 6, 3)
type_of_people <- c("Friends", "Alone", "Others")

data <- data.frame(
    age, marital_status, quality,
    time_spent, num_of_people, type_of_people
)
write.table(data, "data.csv", sep = ",", row.names = FALSE, col.names = TRUE)
data$type_of_people
# Measure of central tendency - Mean, Median, Mode, Range, Variance,
# Standard Deviation

dim(data) # Dimensions of the data
str(data) # Structure of the data

print(summary(data))
box <- boxplot(data$age,
    main = "Distrubution of Age",
    col = "blue",
    ylab = "Age"
)