library(dplyr)
library(tidyr)
library(ggplot2)
library(lubridate)
library(highcharter)
library(scales)

#---------------------Read the datasets---------------------------------------
airline <- read.csv("data/Airlinewise Monthly International Air Traffic To And From The Indian Territory.csv - Airlinewise Monthly International Air Traffic To And From The Indian Territory.csv.csv")
View(airline)
Countrywise <- read.csv("data/Countrywise Quarterly International Air Traffic To And From The Indian Territory.csv - Countrywise Quarterly International Air Traffic To And From The Indian Territory.csv.csv")
Countrywise
Citywise <- read.csv("data/Citypairwise Quarterly International  Air Traffic To And From The Indian Territory.csv - Citypairwise Quarterly International  Air Traffic To And From The Indian Territory.csv.csv")
Citywise

quarter_wise_domestic <- airline %>%
  filter(CARRIER.TYPE == "DOMESTIC") %>%
  group_by(YEAR, QUARTER) %>%
  summarise(Passengers_ToInd = sum(PASSENGERS.TO.INDIA), Passengers_FromInd = sum(PASSENGERS.FROM.INDIA))

gather(quarter_wise_domestic, key = Category, Total, 3:4) %>%
  ggplot(aes(x = QUARTER, y = Total, fill = Category)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~YEAR) +
  scale_y_continuous(labels = comma) +
  labs(title = "Quarter Wise Travellers Domestic Flights", x = "Quarter", y = "Passengers")