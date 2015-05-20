score.plot <- function(df) {
  
  df.score <- data.frame(t(df[,1:5]))
  
  df.score$Metric <- c(letters[1:5])
  colnames(df.score)[1] <- "Score"
  
  p <- ggplot(data = df.score) + 
    geom_bar(aes(x = Metric, y = Score, fill = Score), stat = "identity") + 
    geom_text(aes(x= Metric, y=Score, ymax=Score, label=Score, 
                 vjust=ifelse(Score>=8, 1.5, -1)), 
             position = position_dodge(width=1),
             size = 6,
             fontface = "bold")+
    scale_fill_gradient(low = "orangered", high = "steel blue") +
    theme(axis.line = element_line(colour = "black"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          panel.background = element_blank(),
          axis.line.x = element_blank(),
          axis.line.y = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks.y = element_blank(),
          axis.title.y = element_blank(),
          axis.text.y = element_blank(),
          legend.position = "none")+
    xlab(paste("Overall score:", df[,6]))
    
  return(p)
  
}


