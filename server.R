
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

shinyServer(function(session,input, output) {

  output$myMap<- renderLeaflet({
    m<-leaflet()
    m<- addTiles(m,urlTemplate = "map/tiles/{z}/{x}/{y}.png",
                 option=list(continuousWorld=TRUE,
                             tileSize="256",minZoom="0",maxZoom="5"))
    m
  })

})
