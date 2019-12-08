library(datasets)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$irisPlot <- renderPlot({
    
    # Render a plot
    plot(iris[,input$option1] ~ iris[,input$option2],
            main=paste("This graph shows", input$option1, "by", input$option2),
            pch = 3,
            ylab=input$option1,
            xlab=input$option2,
            col=c("red", "green", "blue"))
         abline(lm(iris[,input$option1] ~ iris[,input$option2]), col="black", lwd=3, lty=4)
         lines(lowess(iris[,input$option1] ~ iris[,input$option2], f = input$lowess), col = 'black', lwd=3, lty=4)
         legend('topright', legend = unique(iris$Species), col = c("red", "green", "blue"), pch = 3)
  })
}



