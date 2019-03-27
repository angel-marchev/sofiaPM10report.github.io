library(shiny)
library(leaflet)
library(RColorBrewer)
library(intrval)

vars <- c(
  "Yesterday" = "day-1",
  "Today" = "day0",
  "Tomorrow" = "day1"
)

ui <- navbarPage("FEBA Air Pollution Project", id="nav",
                 
                 tabPanel("Air Pollution Map - Sofia",
                          div(class="outer",
                              
                              tags$head(
                                
                                includeCSS("styles.css"),
                                includeScript("gomap.js")
                              ),
                              
                              leafletOutput("map", width="100%", height="100%"),
                              
                              absolutePanel(id = "controls", class = "panel panel-default", fixed = FALSE,
                                            draggable = FALSE, top = 60, left = "auto", right = 20, bottom = "auto",
                                            width = 330, height = "auto",
                                            
                                            h2(""),
                                            selectInput("day", "Select date:", vars, selected = "day0"),
                                            
                                            h5("PM10 Daily Average:"),
                                            verbatimTextOutput("txtout")
                                            
                              ),
                              
                              tags$div(id="cite",
                                       '', tags$em(''), ''
                              )
                          )
                 ),
                 
                 conditionalPanel("false", icon("crosshair"))
)

server <- function(input, output, session) {
  
  output$txtout <- renderText({
    paste(round(mean(sofia_summary$time_2)))
  })
  
  sofia_summary <- read.csv("./data/sofia_summary.csv")
  filteredData <- reactive({
    sofia_summary[]
  })
  
  bins <-c(0, 20, 35, 50, 100, 1200) 
  pal <- colorBin("viridis", bins=bins, reverse=TRUE)
  
  output$map <- renderLeaflet({
    leaflet(sofia_summary) %>% 
      addTiles(urlTemplate = "https://api.mapbox.com/styles/v1/dtstefanov/cjt1jf00p0vy31fp1476rf3ub/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZHRzdGVmYW5vdiIsImEiOiJjanQxZnFiZDgxNHQyM3lxdGg1MGVtZ3U4In0.3C1k_Aa8FVWEeDrmN2p7Tg",
               attribution = 'Map by <a href="http://www.mapbox.com/">Mapbox</a>') %>%
      fitBounds(~min(lng), ~min(lat), ~max(lng), ~max(lat)) %>%
      addLegend(pal = pal, values = sofia_summary$time_1, group = "circles", position = "bottomleft", opacity = 0.5, title = "PM10 Particles")
  })
  
  
  observe({
    ByDay <- input$day
    
    if (ByDay == "day-1") {
      leafletProxy("map", data = filteredData()) %>%
      clearMarkers() %>%
      addCircleMarkers(
        radius = 8,
        color = ~pal(sofia_summary$P1),
        stroke = FALSE, fillOpacity = 0.5,
        popup = paste("Geohash:", sofia_summary$geohash, "<br>",
                      "<b> PM10 Concentration: </b>", round(sofia_summary$P1)))
      
      output$txtout <- renderText({
        paste(round(mean(sofia_summary$P1)))
      })
    }
    
    if (ByDay == "day0") {
      leafletProxy("map", data = filteredData()) %>%
        clearMarkers() %>%
        addCircleMarkers(
          radius = 8,
          color = ~pal(sofia_summary$P1.1),
          stroke = FALSE, fillOpacity = 0.5,
          popup = paste("Geohash:", sofia_summary$geohash, "<br>",
                        "<b> PM10 Concentration: </b>", round(sofia_summary$P1.1))) 
      
      output$txtout <- renderText({
        paste(round(mean(sofia_summary$P1.1)))
      })
    }
    
    if (ByDay == "day1") {
      leafletProxy("map", data = filteredData()) %>%
        clearMarkers() %>%
        addCircleMarkers(
          radius = 8,
          color = ~pal(sofia_summary$P1.2),
          stroke = FALSE, fillOpacity = 0.5,
          popup = paste("Geohash:", sofia_summary$geohash, "<br>",
                        "<b> PM10 Concentration: </b>", round(sofia_summary$P1.2))) 
      
      output$txtout <- renderText({
        paste(round(mean(sofia_summary$P1.2)))
      })
    }
    
    
  })
  
}

shinyApp(ui, server)