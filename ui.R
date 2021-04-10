# Coursera - Developing Data Products- Course Project 

# ui.R file for the shiny app 

# create a filter for available diamonds selection.

# using diamonds Dataset from R


#numericInput('cost', 'Gasoline Price (per gallon):', 2.31, min = 2, max = 5, step=0.01), 
#numericInput('gas', 'Maximum expenditure on gasoline:', 60, min=1, max=1000), 

#checkboxGroupInput('cut', 'Your desired cut', c("Fair"="Fair", "Good"="Good", "Very Good"="Very Good", "Premium" = "Premium", "Ideal" = "Ideal"),  selected = c("Good", "Very Good", "Premium", "Ideal")),

#checkboxGroupInput("color", "Diamond color", c("D"="D", "E"="E", "F"="F", "G" = "G", "H" = "H", "I" = "I", "J" = "J"), 

library(markdown) 

shinyUI(navbarPage("Diamonds Selector", 
                   tabPanel("Table", 
                            
                            # Sidebar 
                            sidebarLayout( 
                              sidebarPanel( 
                                helpText("Select available diamonds matching your needs"), 
                                numericInput("price", "'Max budget (in usd):", 10000, min = 326, max = 20000), 

                                checkboxGroupInput('cut', 'Your desired cut', c("Fair"="Fair", "Good"="Good", "Very Good"="Very Good", "Premium" = "Premium", "Ideal" = "Ideal"),  selected = c("Good", "Very Good", "Premium", "Ideal")),
                                sliderInput('caret', "caret", min=0.1, max=5.1, value=c(0.1,5.1), step=0.1), 
                                checkboxGroupInput("color", "Diamond color", c("D", "E", "F", "G", "I","J"), 
                                                   selected = c("D", "E", "F", "G", "H", "I", "J"))
                              ), 
                              
                              
                              mainPanel( 
                                dataTableOutput("table") 
                              ) 
                            ) 
                   ), 
                   tabPanel("Info",
                            mainPanel( 
                              includeMarkdown("info.Rmd") 
                            ) 
                   ) 
) 
)  