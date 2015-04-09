library(shiny)


# Define server logic required to display required clothing for the corresponding temperature
shinyServer(function(input, output) {
	output$text1 <- renderText({
					if (is.numeric(input$temperature)){
						HTML(paste("Tehilla, you said outside it is ", input$temperature, "° Farenheit"))
						}
  					})
	output$summary <- renderUI({
		if (is.numeric(input$temperature)){
				if (0 < input$temperature & input$temperature < 39){
					HTML(paste("<h2>Today's clothing should include:</h2>", 
					 "<h4>**Tights or Leggings</h4>", 
					 "<h4>**Long Sleeves</h4>", 
					 "<h4>**Winter Coat</h4>", 
					 "<h4>**Scarf</h4>",
					 "<h4>**Gloves</h4>", 
					 "<h4>**Hat</h4>", sep="<br/>"))
				} else if (40 < input$temperature & input$temperature < 55){
					HTML(paste("<h2>Today's clothing should include:</h2>",
					 "<h4>**Tights or Leggings</h4>",
					 "<h4>**Long Sleeves</h4>",
					 "<h4>**Winter Coat</h4>", sep="<br/>"))
				} else if (56 < input$temperature & input$temperature < 65){
					HTML(paste("<h2>Today's clothing should include:</h2>",
					 "<h4>**Leggings</h4>", 
					 "<h4>**Long Sleeves</h4>", 
					 "<h4>**Lightweight Coat</h4>", sep="<br/>"))
				} else if (66 < input$temperature & input$temperature < 77){
					HTML(paste("<h2>Today's clothing should include:</h2>",
						"<h4>**Long Sleeves</h4>", 
						"<h4>**Sweater</h4>", sep="<br/>"))
				} else {
					HTML(paste("<h2>Today's clothing should include:</h2>",
					 "<h4>**Short Sleeves</h4>",
					 "<h4>YAY! It is FINALLY summer</h4>", sep="<br/>"))
				}
		}
	})
})