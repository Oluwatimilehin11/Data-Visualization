library = ('ggplot2')
library = ('ggplot')
df_real_estate <- read.csv('C:/Users/phera/Desktop/Data Visualization/Histogram/histogram_data.csv',
                           header =  TRUE,
                           sep = ",")
hist <- ggplot(df_real_estate,
                 aes(x = Price)) +
  geom_histogram(bins = 8,
                 fill = '#108A99',
                 color = 'White') +
   theme_classic() +
  ggtitle('Distribution Of Real Estate Prices') +
  xlab("Price in (000' $)") +
  ylab('Number of Properties') +
  theme(plot.title = element_text(size = 16,
                                  face = 'bold'))

hist
