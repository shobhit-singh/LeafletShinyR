library(shiny)
library(leaflet)

function(input, output) {
  output$map <- renderLeaflet({
    tryCatch({
      if (input$lat == "" || input$lon == "") {
        leaflet() %>%
          addTiles() %>%
          setView(lng = 35 ,
                  lat = 26,
                  zoom = 2)
        
      } else {
        leaflet() %>%
          addTiles() %>%
          setView(lng = input$lon ,
                  lat = input$lat,
                  zoom = 12) %>%
          addMarkers(lat = input$lat,
                     lng = input$lon)
        
      }
      
    },
    error = function(e) {
      output$text1 <- renderText({
        paste("Not a valid geo-codes")
      })
      return(NULL)
    })
  })
  
  
  
}
