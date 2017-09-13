# Una simple app de shiny para algunas distribuciones continuas

library(shiny)

ui <- fluidPage(
   
   # Titulo de la aplicacion 
   titlePanel("Distribuciones continuas"),
   sidebarPanel(
     radioButtons("dist", "Distribuciones :",
                  list("Normal" = "norm",
                       "Uniform" = "unif",
                       "Log-normal" = "lnorm",
                       "Exponential" = "exp")),
     sliderInput("n",
                 "Numero  de observaciones:",
                 value = 500,
                 min = 1,
                 max = 1000)
   ),
   mainPanel(
     tabsetPanel(
       tabPanel("Plot", plotOutput("plot")),
       tabPanel("Summary", verbatimTextOutput("summary")),
       tabPanel("Table", tableOutput("table"))
     )
   )
)
      
# 
server <- function(input, output) {
  data <- reactive({
    dist <- switch(input$dist,
                   norm = rnorm,
                   unif = runif,
                   lnorm = rlnorm,
                   exp = rexp,
                   rnorm)
    
    dist(input$n)
  })
  output$plot <- renderPlot({
    hist(data())
    
  })
  output$summary <- renderPrint({
    summary(data())
  })
  output$table <- renderTable({
    data.frame(x=data())
  })
}
# Corremos la aplicacion
shinyApp(ui = ui, server = server)

