#Patrick Smith
#INFO 498F
#A8 Building an Application
#ui.R

options(stringsAsFactors = FALSE)
library(shiny)
library(plotly)
library(dplyr)


shinyUI(fluidPage(
  
  titlePanel("Iris App"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("x_axis",
                  "Which value is displayed along the X axis",
                  choices = list("Width" = 'Sepal.Width', "Length" = 'Sepal.Length')),
    
    
      selectInput("y_axis",
                  "Which Value is displayed along the y axis",
                  choices = list("Width" = 'Sepal.Width', "Length" = 'Sepal.Length'),
                  selected = 'Sepal.Length')
    ),
    mainPanel(
      plotOutput("scatPlot")
    )
  )
))