Dates <- Top_Highest_Openings %>%
  mutate(Year = as.numeric(format(as.Date(Date, format="%d-%m-%Y"), "%Y")))

total_gross_per_year <- Dates %>% group_by(Year) %>% summarize(`Total Gross` = sum(`Total Gross`, na.rm = TRUE))

ggplot(total_gross_per_year, aes(x = Year, y = `Total Gross`)) + geom_line() + geom_point() +
labs(title = "Total Gross Earnings per Year", x = "Year", y = "Total Gross Earnings") + theme_minimal()
