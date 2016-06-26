shinyServer(function(input, output) {
        
        output$plot1 <- renderPlot({
                n <- input$n
                data <- rnorm(n, input$mean, input$sd)
                hist(rnorm(data), 
                     #main = "Distribution of User Specified Random Numbers", 
                     main=paste('(',n,')', ' Random Numbers', sep=''),
                     xlab = "Random Numbers", col = "blue1")
        })
        # Generate a summary of the data
        output$summary <- renderPrint({
                n <- input$n
                summary(rnorm(n, input$mean, input$sd))
        })
        
        # Generate an HTML table view of the data
        output$table <- renderTable({
                n <- input$n
                data.frame (RandomNumbers=(rnorm(n, input$mean, input$sd)))
        })
      
})