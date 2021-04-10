# Coursera - Developing Data Products- Course Project 

# ui.R file for the shiny app 

# create a filter for available diamonds selection.

# using diamonds Dataset from R

library(shiny) 
library(tidyverse)


shinyServer(function(input, output) { 
  
  
  # Show diamonds accouding filters 
  output$table <- renderDataTable({ 
    caret_seq <- seq(from = input$caret[1], to = input$caret[2], by = 0.1) 

    data <- transmute(diamonds, Diamond = rownames(diamonds), price = price, 
                      caret = carat, color = color, cut = cut)
    
    data <- filter(data, price <= input$price, cut %in% input$cut,  
                   color %in% input$color, caret %in% caret_seq) 
    data <- arrange(data, price) 
    data 
  }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30)) 
}) 
