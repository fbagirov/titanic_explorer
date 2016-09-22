#install.packages("shiny")
#install.packages("dplyr")
#install.packages("ggplot2")
library(shiny)
library(dplyr) 
library(ggplot2)

t1 <- read.csv("data/titanic3.csv")

#Building the UI
fluidPage(
        titlePanel("Titanic dataset explorer"),
        #adding a layout
        sidebarLayout(
                sidebarPanel(
                        radioButtons("sexInput", "sex", choices = c("male","female"), selected = NULL),
                        sliderInput("ageInput", "age", 0, 80, c(25,40)),
                        radioButtons("survivedInput", "survived", choices = c(1,0))),
                mainPanel(
                        plotOutput("coolplot"),
                        br(),br(),
                        tableOutput("results")
                )
                
        ))

