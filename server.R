
library(shiny)
server <- function(input, output) {
    
    output$Plot1 <- renderPlot({ 
        x  <-   mtcars[, input$variable] 
        hist(x, col = 'coral', border = 'black', xlab=input$variable,
             main="Histogram of motor vehicle characteristics")
    })
}

