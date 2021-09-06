# Importing Packages
library(reshape)


# Reading data
df_students <- read.csv("data/students.csv")

# Printing Df
df_students

# Renaming columns
colnames(df_students)[2] <- "Last"
colnames(df_students)[3] <- "First"
colnames(df_students)[7] <- "Status"
colnames(df_students)[12] <- "score"
colnames(df_students)[13] <- "height"
colnames(df_students)[14] <- "newspaper_read"

# Mode for each category
table_gender <- table(df_students$Gender)
table_newspaper <- table(df_students$newspaper_read)

# Comparing two columns
newspaper_gender_table <- table(df_students$newspaper_read, df_students$Gender)
newspaper_gender_table

# Row Proportions
prop.table(newspaper_gender_table)
prop_table <- prop.table(newspaper_gender_table, 1)
addmargins(round(100 * prop_table, 2))


# Column Proportions
prop.table(newspaper_gender_table, 2)
round(100 * prop.table(newspaper_gender_table, 2), 2)
addmargins(round(prop.table(newspaper_gender_table, 2), 2), 1)

