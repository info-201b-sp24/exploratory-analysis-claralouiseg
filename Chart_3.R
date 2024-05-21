Top_Highest_Openings$Date %>% as.Date(movies_data$Date, format = "%Y-%m-%d")
ggplot(Top_Highest_Openings, aes(x = Date, y = Total_Gross, group = Release, color = Release)) +
  geom_line() +
  labs(title = "Total Gross Earnings over Time",
       x = "Release Date",
       y = "Total Gross Earnings",
       color = "Movie Title") +
  theme_minimal()
