library("devtools")
library("inspectdf")
library("dplyr")

data(starwars)
starwars %>% inspect_types()
starwars %>% inspect_cat()
df <- starwars %>% inspect_cat()

df %>% show_plot()
df %>% show_plot(high_cardinality = 4, col_palette = 4)
df %>% show_plot(high_cardinality = 4, col_palette = 5)
df %>% show_plot(high_cardinality = 10)