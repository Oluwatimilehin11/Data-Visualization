library(ggplot2) #visualization library

#load the marketing data set for the regression plot
df_ad_expenditure <- read.csv("C:/Users/phera/Desktop/Data Visualization/Regression_plot/scatter_plot_ii.csv", 
                              header = TRUE, 
                              sep = ",")

regression_scatter <- ggplot(df_ad_expenditure,
                             aes(x = Budget, 
                                 y = Sales)) +
                      geom_point(size = 3, #size for the points
                                 color = 'grey12') +
                      geom_smooth(method = lm, #the regression line, lm stnads for linear model
                                  color = "red", 
                                  fill = "red") +
                                  #,se = FALSE) #to remove the confidence interval
                      #formating non-data elements, such as choosing a theme and adding axis labels and a title
                      theme_classic() +
                      xlab("Ad Expenditure in (000's $)") +
                      ylab("Sales in (000's Units)") +
                      ggtitle("Effect of Ad Expenditure on Sales")
regression_scatter
