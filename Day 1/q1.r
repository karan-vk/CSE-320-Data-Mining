age <- c(45, 89, 23)
marital_status <- c("Married", "Unmarried", "Divorce")
quality <- c("Excellent", "Good", "Poor")
Time_spent <- c(100, 80, 60)
num_of_people <- c(2, 6, 3)
type_of_people <- c("Friends", "Alone", "Others")

data <- data.frame(age, marital_status, quality, Time_spent, num_of_people, type_of_people)
write.table(data, "data.csv", sep = ",", row.names = FALSE, col.names = TRUE)