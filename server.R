#Patrick Smith
#INFO498F
#A8 Building an Application
#This code hosts the Shiny server and builds the plotly app.

#Setting golbal options and loading in R packages
options(stringsAsFactors = FALSE)
library(shiny)
library(dplyr)
library(plotly)

#Loading in and saving the iris data.
data("iris")

iris_data <- iris

#Server code, this code generates and displays a plotly plot on the mainpage of this Shiny app
shinyServer(function(input, output) {
  output$scatPlot <- renderPlotly({
    
    #Plotly code. This chart is a dot plot
    plot_ly(iris_data, x = eval(parse(text = input$x_axis)), y = eval(parse(text = input$y_axis)),
            text = paste("Species: ", Species), mode = "markers",
            color = Species, colors = input$`Color Set` ,size = Petal.Length, opacity = Petal.Width) %>% 
      layout(title = 'Iris Measurement Plot',
             xaxis = list(title = input$x_axis),
              yaxis = list(title = input$y_axis)
      )
  })
})