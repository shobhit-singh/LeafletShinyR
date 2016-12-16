library(shiny)

bootstrapPage(
  tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
  leafletOutput("map", width = "100%", height = "100%"),
  absolutePanel(
    top = 80,
    left = 30,
    
    textInput(
      "lat",
      "Enter Latitude:",
      value = "",
      width = "50%",
      placeholder = "Latitude"
    ),
    textInput(
      "lon",
      "Enter Longitude:",
      value = "",
      width = "50%",
      placeholder = "Longitude"
    ),
    sliderInput(
      "zoom",
      "Zoom:",
      min = 1,
      max = 18,
      value = 12
    )
  )
)
