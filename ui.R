
data("mtcars")
head(mtcars)
library(shiny)
ui <- fluidPage(
    titlePanel("Vehicle Description"),
    sidebarLayout( 
        sidebarPanel( 
            selectInput("variable", label = h3("Select variable to view histogram"), 
                        choices = list("Horse power" = "hp", 
                                       "Miles per gallon" = "mpg", 
                                       "Weight" = "wt", 
                                       "Displacement"="disp"),
                        selected = 1)
        ),
        
        mainPanel(
            plotOutput("Plot1")
        )
    )
)
