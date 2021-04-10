# Coursera - Developing Data Products- Course Project 

# server.R file for the shiny app 


# create a filter for available diamonds selection.

# using diamonds Dataset, from [R] 

library(shiny) 
library(datasets) 
library(tidyverse)
#tidyverse --> opens GGPLOT --> which loads the diamonds dataset)

summary(diamonds)

data <- diamonds
data$lenght <- data$x
data$width <- data$y
data$dept <- data$z

data2 <- diamonds$cut %in% "Fair"
table(data2)