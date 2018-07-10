# Server logic ----
server <- function(input, output) {

  output$plot <- renderPlot({
   data(EuStockMarkets)
   stocks <- as.data.frame(EuStockMarkets)
   c <- as.numeric(input$index)
   hist(stocks[,c], breaks = seq(1000, max(stocks[,c]), l = input$bins +1))
  })
}

