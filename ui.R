
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

shinyUI(fluidPage(

  # Application title
  titlePanel("Example local-tiles"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      p("Example by Gherardo Varando"),
      tags$a("GitHub",href="https://github.com/gherardovarando/example-local-tiles"),
      p(),
       tags$a("Original Image",href="https://en.wikipedia.org/wiki/History_of_Boston#/media/
         File:Boston_area_colonial_map.jpg"),
      p(),
      p("The map folder structure is created with the following FIJI/ImageJ plugin:"),
      tags$a("Map_tools",href="https://github.com/gherardovarando/Map_tools.git")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      leafletOutput("myMap")
    )
  )
))
