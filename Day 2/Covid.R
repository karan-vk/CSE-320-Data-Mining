library("Hmisc")
# install.packages("Hmic")


# Load data
df <- read.csv("data/COVID19_line_list_data.csv")
df$death_dummy <- as.integer(df$death != 0)
df$death_dummy

# Create a new column for the date

dead <- subset(df, death_dummy == 1)
alive <- subset(df, death_dummy == 0)


mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)


t.test(dead$age, alive$age, alternative = "two.sided", conf.level = 0.99)

male <- subset(df, gender == "male")
female <- subset(df, gender == "female")

t.test(male$death_dummy, female$death_dummy,
    alternative = "two.sided", conf.level = 0.99
)