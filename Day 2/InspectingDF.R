# Importing Packages
library(devtools)
# install_github("alastairrushworth/inspectdf")
# install.packages("inspectdf")
library(inspectdf)
library(dpylr)

# Importing dataframe
df_starwars <- data(starwars)
head(df_starwars)

# Inspect data types of all columns
df_starwars_types <- starwars %>% inspect_types()
df_starwars_types

# Inspecting  Categorical Columns
starwars %>% inspect_cat()

# Plotting distinct datatypes
df_starwars_types %>% show_plot(high_cardinality = 4, col_palette = 5)
df_starwars_types %>% show_plot(high_cardinality = 4, col_palette = 4)
df_starwars_types %>% show_plot(high_cardinality = 10, col_palette = 3)