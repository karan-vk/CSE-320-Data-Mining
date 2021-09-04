df <- read.csv2(
    "data/Airlinewise Monthly International Air Traffic To And From The Indian Territory.csv - Airlinewise Monthly International Air Traffic To And From The Indian Territory.csv.csv",
    header = T, sep = ","
)
install.packages(c("ggplot2", "dplyr", "tidyr", "lubridate", "highcharter", "scales"))