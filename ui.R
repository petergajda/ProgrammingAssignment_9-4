library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Iris Data Set"),
  
  # Generate sidebar
  sidebarLayout(      
    
    # Define the sidebar
    sidebarPanel(
      selectInput("option1", "Option Y-Axis:", 
                  choices=colnames(iris[1:4])),
      selectInput("option2", "Option X-Axis:", 
                  choices=colnames(iris[1:4])),
      hr(),
      helpText("Data from iris data set (1936)."),
      hr(),
      sliderInput("lowess", "Line lowess:",
                  min = 0.01, max = 1,
                  value = 0.5),
      hr(),
      helpText("Please use this app to create a plot between 2 variables from the iris dataset. Use the dropdown to select the variables. The plot shows you the distribution of the data points. You will also see two lines. A solid drawing a linear model into the plot. The second can be operated via the slider and thus adjust the lowess.")
      ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("irisPlot")  
    )
    
  )
)