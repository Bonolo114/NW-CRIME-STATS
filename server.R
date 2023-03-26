library(shiny)
library(dplyr)
library(shinythemes)
library(DT)
library(data.table)
library(ggplot2)
library(rsconnect)


# Define server logic required to draw a scatterplot
server <- function(input, output) {
  
  location <- read.csv("Location.csv", header = TRUE)  
  
  datat <-reactive({
    req(input$Station)
    
    location %>%
      filter(Place %in% input$Station)
  })
  
  datau <-reactive({
    req(input$crime)
    
    datat() %>%
      filter( Crime %in% input$crime)
  })
  
  
  
  output$distPlot <- renderPlot({
    g <- ggplot(data = datau(), aes( x= date, y=Incidences))+ geom_point(shape = 18, col = "red") + theme(axis.text.x = element_text(angle = 90))+ ggtitle("Crime Incidences")
    g
  }, res = 96)
}