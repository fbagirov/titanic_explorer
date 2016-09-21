library(shiny)
library(dplyr) 
library(ggplot2)

function(input,output,session) {
        output$coolplot <- renderPlot({
                filtered <- 
                        t1 %>%
                        filter(sex == input$sexInput,
                               age >= input$ageInput[1],
                               age <= input$ageInput[2],
                               survived == input$survivedInput
                        )
                ggplot(filtered, aes(age)) +
                        geom_histogram()
        })
        output$results <- renderTable({
                filtered <-
                        t1 %>%
                        filter(sex == input$sexInput,
                               age >= input$ageInput[1],
                               age <= input$ageInput[2],
                               survived == input$survivedInput
                        )
                filtered
        })
}        

