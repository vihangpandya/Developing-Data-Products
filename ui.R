shinyUI(fluidPage(
        titlePanel("Visualization Tool for Normal Random Number Generator"),
        fluidRow(
                column(4, wellPanel(
                textInput("text","TABS","Refer to Instructions, Plot, Summary, Table Tabs on Right"),
                        h4('Select Random Number Observations'),
                        sliderInput("n", "N:", min = 10, max = 1000, value = 200,
                                    step = 10),
                        h4('Select the Mean'),
                        sliderInput("mean", "Mean:", 
                                    min = 0, max = 100, value = 0.5, step= 0.1),
                        h4('Select the Standard Deviation'),
                        sliderInput("sd", "Standard Deviation:", 
                                    min = 0, max = 100, value = 0.5, step= 0.1),
                        submitButton("Submit")
                )),
                column(5,
                       tabsetPanel(type = "tabs",
                                   tabPanel("Instructions",p("Input # of obs, desired 
                                                             mean & std dev.Press SUBMIT to see results
                                                             in adjoining TABS")),
                                   tabPanel("Plot", plotOutput("plot1")), 
                                   tabPanel("Summary", verbatimTextOutput("summary")), 
                                   tabPanel("Table", tableOutput("table"))
                       )
                      
                )
        )
))