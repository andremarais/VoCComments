require(shiny)

shinyUI(fluidPage(
        titlePanel("VoC Comments"),
        # Row 1
        fluidRow(
          
        column(3,
               wellPanel(textOutput("wp1.t"),
                         plotOutput("wp1.p", height = "150px"),
                         style = if (voc[1,6] >= 9) "border-color: green;" else if 
                         (voc[1,6] >= 5 &  voc[1,6]< 9) "border-color: orange;" else "border-color: red;"
                 )),
        column(3,
               wellPanel(textOutput("wp2.t"),
                         plotOutput("wp2.p", height = "150px"),
                         style = if (voc[2,6] >= 9) "border-color: green;" else if 
                         (voc[2,6] >= 5 &  voc[2,6]< 9) "border-color: orange;" else "border-color: red;"
               )),
        column(3,
               wellPanel(textOutput("wp3.t"),
                         plotOutput("wp3.p", height = "150px"),
                         style = if (voc[3,6] >= 9) "border-color: green;" else if 
                         (voc[3,6] >= 5 &  voc[3,6]< 9) "border-color: orange;" else "border-color: red;"
               )),
        column(3,
               wellPanel(textOutput("wp4.t"),
                         plotOutput("wp4.p", height = "150px"),
                         style = if (voc[4,6] >= 9) "border-color: green;" else if 
                         (voc[4,6] >= 5 &  voc[4,6]< 9) "border-color: orange;" else "border-color: red;"
               ))
        
        
        ),
        
        # Row 2
        fluidRow(
          column(3,
                 wellPanel("5"
                 )),
          column(3,
                 wellPanel("6"
                 )),
          column(3,
                 wellPanel("7"
                 )),
          column(3,
                 wellPanel("8"
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