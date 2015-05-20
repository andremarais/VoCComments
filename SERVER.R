voc.path <- list.files(file.path(getwd(), "data"), pattern = ".csv")

voc <- read.csv(file.path(getwd(), "data", voc.path))

source("www/scoreplot.R", local = T)


shinyServer(function(input, output) {
  
  output$wp1.t <- renderText(as.character(voc[1,7]))
  output$wp1.p <- renderPlot(score.plot(voc[1,]))
  
  output$wp2.t <- renderText(as.character(voc[2,7]))
  output$wp2.p <- renderPlot(score.plot(voc[2,]))
  
  output$wp3.t <- renderText(as.character(voc[3,7]))
  output$wp3.p <- renderPlot(score.plot(voc[3,]))
  
  output$wp4.t <- renderText(as.character(voc[4,7]))
  output$wp4.p <- renderPlot(score.plot(voc[4,]))

  
  
  
  
  
})