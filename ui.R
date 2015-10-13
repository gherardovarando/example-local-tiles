
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

shinyUI(fluidPage(

  # Application title
  titlePanel("Example map old boston"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
     p("Image from:"),
       p("https://en.wikipedia.org/wiki/History_of_Boston#/media/
         File:Boston_area_colonial_map.jpg")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      leafletOutput("myMap")
    )
  )
))
