install.packages("devtools")
install.packages("inspectdf")
install.packages("gmodels")
install.packages("Lock5Data")
install.packages("reshape")
# install_github('alastairrushworth/inspectdf")


df_sharks <- read.csv("data/sharks.csv")
df_sharks

# COlumns Description
# Common Name : Categorical(Nominal)
# Scientific  : Categorical(Nominal)
# Length and mass : Continuous

# Structure
str(df_sharks)

# dimensions
dim(df_sharks)

# Descriptive statistics
summary(df_sharks)

# Statisctics for Continuous data

# Mean
mean(df_sharks$LENGTH..m.)

# Median
median(df_sharks$MASS..kg.)

# Statisctics for categorical data

# Mode for each category
table(df_sharks$COMMON.NAME)

sci_name_table <- table(df_sharks$SCIENTIFIC.NAME)

# Percentage of each category
prop.table(sci_name_table)