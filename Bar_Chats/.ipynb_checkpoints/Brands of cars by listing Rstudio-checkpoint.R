library("ggplot2")

df_used_cars <- read.csv("C:/Users/phera/Desktop/Data Visualization/Bar_Chats/bar_chart_data.csv",
                         header = TRUE,
                         sep = ",")
bar_chart <- ggplot(df_used_cars) +
                  aes(x = Brand,
                      y = Cars.Listings) +
                  geom_bar(stat = "identity",
                             width = 0.6,
                             color = 'navy',
                           fill = 'navy') +
             ggtitle("Brands by Listing of Cars") +
                      theme_classic() +
          theme(axis.title.x = element_text(angle = 0,
                                    hjust = 0.5)) + 
                                   labs(x = NULL,
                           y = 'Number of Listings')

bar_chart + coord_flip()

