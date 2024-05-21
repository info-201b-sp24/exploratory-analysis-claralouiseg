# Find the top 10 distributers 

top_distributors <- Top_Highest_Openings %>% count(Distributor) %>% top_n(10, wt = n)

# Create bar graph of the top 10 distributers based on number of top grossing movies by each

Chart_1 <- ggplot(top_distributors, aes(x=reorder(Distributor, -n), y = n, group = 1)) + geom_bar(stat = "identity", fill = 'blue') + theme_minimal() + labs(title = 'Top Ten Distributors', x = 'Distributor', y = 'Number of Movies') + theme(axis.text.x = element_text(angle = 45, hjust = 1))
