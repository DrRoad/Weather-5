library(shiny)


# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
	output$text1 <- renderText({ 
          paste("Tehilla, you said outside it is ", input$temperature)
  }
)
