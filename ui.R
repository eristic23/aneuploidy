
#
#
# 

library(shiny)

shinyUI(fluidPage(
  
  #Title
  headerPanel("Yeast Aneuploidy Analysis"),
  
  sidebarPanel(
    
    fileInput("sdsfile", "Choose Your SDS File",
      accept=c("text/csv", 
        "text/comma-separated-values","text/plain", 
        ".csv")),
    br(),
    
    selectInput("wt", "Select your wildtype",
      c("label 1" = "option1",
        "label 2" = "option2",
        "label 3" = "option3",
        "label 4" = "option4")),
    br(),
    
    sliderInput("slider1", "Sample 1 Ploidy", min = 1, max = 8, value = 1, step = 1, ticks = FALSE),
    sliderInput("slider2", "Sample 2 Ploidy", min = 1, max = 8, value = 1, step = 1, ticks = FALSE),
    sliderInput("slider3", "Sample 3 Ploidy", min = 1, max = 8, value = 1, step = 1, ticks = FALSE),
    sliderInput("slider4", "Sample 4 Ploidy", min = 1, max = 8, value = 1, step = 1, ticks = FALSE)
  ),
  
  
  mainPanel(
    tabsetPanel(type = "tabs",
      tabPanel("Table", tableOutput("view")),
      tabPanel("Sample 1", plotOutput("plot1")),
      tabPanel("Sample 2", plotOutput("plot2")),
      tabPanel("Sample 3", plotOutput("plot3")),
      tabPanel("Sample 4", plotOutput("plot4"))
    )
  )
))

