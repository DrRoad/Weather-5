library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Tehilla's Weather Chart"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel( 
    	numericInput('temperature',
    				'Temperature: ',
    				min = 0,
    				max = 100,
    				value = 0,
    		),
    	submitButton('Submit')
    ),
      
    mainPanel(
      h1("Good morning Tehilla!"),
      br(),
      code("We love you and want to make sure you are dressed comfortably for the weather outside."), 
      img(src = "family.png", height=250, width=250),
      h3("Please change the temperature to the correct number"),
      textOutput("text1")
	)
  )
))

