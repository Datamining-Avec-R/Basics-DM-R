library(shiny)
library(ggplot2)
library(gridExtra)
str(iris)
summary(iris)
server <- function(input, output){
  output$box <- renderPlot(
    {
      boxplot(rnorm(input$n), 
      col= input$color,  
      main= input$title, 
      xlab = "Sample Data")
    }
  )
}
