Top_Highest_Openings <- read.csv("Top_Highest_Openings.csv")

library(knitr)
library(tidyverse)
library(dplyr)
library(readxl)
library(ggplot2)
library(kableExtra)

Dates <- Top_Highest_Openings %>%
  mutate(Year = as.numeric(format(as.Date(Date, format="%d-%m-%Y"), "%Y")))

Years <- Top_Highest_Openings %>%
  mutate(Year = as.numeric(format(as.Date(Date, format="%d-%m-%Y"), "%Y")))
min_year <- min(Years$Year, na.rm = TRUE)
max_year <- max(Years$Year, na.rm = TRUE)

warner_bros_movies <- Years %>%
  filter(Distributor == "Warner Bros." & Year >= 1983 & Year <= 2024)

warner_movies_per_year <- warner_bros_movies %>% group_by(Year) %>% summarise(n = n())

Chart_2 <- ggplot(warner_movies_per_year, aes(x = Year, y = n)) +
  geom_line(color = 'blue') +
  geom_point(color = 'blue') +
  theme_minimal() +
  labs(title = 'Number of Top Grossing Movies by Warner Bros. (1983-2024)', x = 'Year', y = 'Number of Movies') + scale_x_continuous(breaks = seq(1983, 2024, by = 1)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

