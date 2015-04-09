library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Put in today's temperature"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel( 
    	numericInput('temperature',
    				'Temperature: ',
    				min = 1,
    				max = 100,
    				value = NULL,
    		),
    	submitButton('Submit'),
    	br(),
    	br(),
    	br(),
    	br(),
    	br(),
    	br(),
    	img(src = "family.png", height=250, width=300)
    ),
      
    mainPanel(
      h1("Tehilla's Weather Chart", align = "center"),
      h2("Good morning Tehilla!", align = "center"),
      br(),
      h4("We love you and want to make sure you are dressed comfortably for the weather outside.", style="color:red", align = "center"),
      br(),
      br(),
      textOutput("text1"),
      br(),
      htmlOutput("summary"), 
      br()
	)
  )
))
