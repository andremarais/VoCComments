voc.path <- list.files(file.path(getwd(), "data"), pattern = ".csv")

voc <- read.csv(file.path(getwd(), "data", voc.path))

source("www/scoreplot.R", local = T)


shinyServer(function(input, output) {
  
  # row 1
  output$wp1.t <- renderText(as.character(voc[1,7]))
  output$wp1.p <- renderPlot(score.plot(voc[1,]))
  
  output$wp2.t <- renderText(as.character(voc[2,7]))
  output$wp2.p <- renderPlot(score.plot(voc[2,]))
  
  output$wp3.t <- renderText(as.character(voc[3,7]))
  output$wp3.p <- renderPlot(score.plot(voc[3,]))
  
  output$wp4.t <- renderText(as.character(voc[4,7]))
  output$wp4.p <- renderPlot(score.plot(voc[4,]))
  
  # row 2
  output$wp5.t <- renderText(as.character(voc[5,7]))
  output$wp5.p <- renderPlot(score.plot(voc[5,]))
  
  output$wp6.t <- renderText(as.character(voc[6,7]))
  output$wp6.p <- renderPlot(score.plot(voc[6,]))
  
  output$wp7.t <- renderText(as.character(voc[7,7]))
  output$wp7.p <- renderPlot(score.plot(voc[7,]))
  
  output$wp8.t <- renderText(as.character(voc[8,7]))
  output$wp8.p <- renderPlot(score.plot(voc[8,]))
  
  
  
  
  
})