#Patrick Smith
#INFO498F
#A8 Building an Application
#server.R

options(stringsAsFactors = FALSE)
library(shiny)
library(dplyr)
library(plotly)

data("iris")

iris_data <- iris

shinyServer(function(input, output) {
  output$scatPlot <- renderPlot({
    
    plot_ly(iris_data, x = eval(parse(text = input$x_axis)), y = eval(parse(text = input$y_axis)),
            text = paste("Species: ", Species), mode = "markers",
            color = Petal.Length, size = Petal.Width, opacity = Petal.Width)
  })
})