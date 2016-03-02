#Patrick Smith
#INFO 498F
#A8 Building an Application
#The ui code for this Shiny app, several side widgets are created by this code.

#Global settings and loading in needed packages.
options(stringsAsFactors = FALSE)
library(shiny)
library(plotly)
library(dplyr)

#UI code
shinyUI(fluidPage(
  
  #Title of the Shiny app
  titlePanel("Iris App"),
  
  #Code for widgets
  sidebarLayout(
    sidebarPanel(
      
      #Widget that controls the variable plotted on the x axis.
      selectInput("x_axis",
                  "Which value is displayed along the X axis",
                  choices = list("Width" = 'Sepal.Width', "Length" = 'Sepal.Length'),
                  selected = 'Sepal.Length'),
    
      #Widget that controls the variable plotted on the y axis.
      selectInput("y_axis",
                  "Which Value is displayed along the y axis",
                  choices = list("Width" = 'Sepal.Width', "Length" = 'Sepal.Length'),
                  selected = 'Sepal.Width'),
      
      #Widget that controls the color set used in the Plotly plot.
      selectInput("Color Set",
                  "Select the color set to use",
                  choices = list('Green' = 'Greens', 'Red' = 'Reds', 'Blue' = 'Blues'),
                  selected = 'Reds')
    
    ),
    #Main pannel of the app, displays the plotly plot.
    mainPanel(
      plotlyOutput("scatPlot")
    )
  )
))