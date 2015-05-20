green <- "border-color: #B2FFE0;background-color: #ffffff;border-width: thick;"
orange <- "border-color: #FFC2A3;background-color: #ffffff;border-width: thick;"
red <- "border-color: #FFAD99;background-color: #ffffff;border-width: thick;"
  



require(shiny)

shinyUI(fluidPage(
        titlePanel("VoC Comments"),
        # Row 1
        fluidRow(
        column(3,
               wellPanel(textOutput("wp1.t"),
                         plotOutput("wp1.p", height = "150px"),
                         style = if (voc[1,6] >= 9) green else if 
                         (voc[1,6] >= 5 &  voc[1,6]< 9) orange else red
                 )),
        column(3,
               wellPanel(textOutput("wp2.t"),
                         plotOutput("wp2.p", height = "150px"),
                         style = if (voc[2,6] >= 9) green else if 
                         (voc[2,6] >= 5 &  voc[2,6]< 9) orange else red
               )),
        column(3,
               wellPanel(textOutput("wp3.t"),
                         plotOutput("wp3.p", height = "150px"),
                         style = if (voc[3,6] >= 9) green else if 
                         (voc[3,6] >= 5 &  voc[3,6]< 9) orange else red
               )),
        column(3,
               wellPanel(textOutput("wp4.t"),
                         plotOutput("wp4.p", height = "150px"),
                         style = if (voc[4,6] >= 9) green else if 
                         (voc[4,6] >= 5 &  voc[4,6]< 9) orange else red
               ))

        ),
        
        # Row 2
        fluidRow(
          column(3,
                 wellPanel(textOutput("wp5.t"),
                           plotOutput("wp5.p", height = "150px"),
                           style = if (voc[5,6] >= 9) green else if 
                           (voc[5,6] >= 5 &  voc[5,6]< 9) orange else red
                 )),
          column(3,
                 wellPanel(textOutput("wp6.t"),
                           plotOutput("wp6.p", height = "150px"),
                           style = if (voc[6,6] >= 9) green else if 
                           (voc[6,6] >= 5 &  voc[6,6]< 9) orange else red
                 )),
          column(3,
                 wellPanel(textOutput("wp7.t"),
                           plotOutput("wp7.p", height = "150px"),
                           style = if (voc[7,6] >= 9) green else if 
                           (voc[7,6] >= 5 &  voc[7,6]< 9) orange else red
                 )),
          column(3,
                 wellPanel(textOutput("wp8.t"),
                           plotOutput("wp8.p", height = "150px"),
                           style = if (voc[8,6] >= 9) green else if 
                           (voc[8,6] >= 5 &  voc[8,6]< 9) orange else red
                 ))
        ),
        
        # Row 3
        fluidRow(
          column(3,
                 wellPanel("9"
                 )),
          column(3,
                 wellPanel("10"
                 )),
          column(3,
                 wellPanel("11"
                 )),
          column(3,
                 wellPanel("12"
                 ))
        ),
        
        # Row 4
        fluidRow(
          column(3,
                 wellPanel("13"
                 )),
          column(3,
                 wellPanel("14"
                 )),
          column(3,
                 wellPanel("15"
                 )),
          column(3,
                 wellPanel("16"
                 ))
        )
        
        
        
        
        
        
        
        
        
        ))