# User interface ----
ui <- fluidPage(
  titlePanel("EuStockMarkets"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Plot for EuStockMarkets"),
      selectInput('index', 'EuStock Index', choices = c("DAX" = 1,"SMI" = 2,"CAC" = 3,"FTSE" = 4), selected = "DAX"),
      sliderInput('bins','Number of bins', min = 10, max = 100, value = 500),
      submitButton("Submit")
),
    mainPanel(plotOutput("plot"))
  )
  )

