
library(shiny)
library(tidyverse)
library(shinyWidgets)
library(openxlsx)


# Define the Shiny app UI
ui <- fluidPage(
  titlePanel(title = "The COCKulator"),
  
  # use a gradient in background
  "setBackgroundColor"(
    color = c("#F0F8FF", "#FE863D"),
    gradient = "radial",
    direction = c("top", "left")
  ),
  selectInput("cocktail", "Select the cocktail name:", choices = sort(cocktails$cocktail_name), selected = NULL),
  numericInput("amount", "Enter the desired amount (in glasses):", value = 1),
  selectInput("unit", "Enter the desired unit:", choices = c("ml", "cl", "dl")),
  actionButton("calculate", "Calculate"),
  verbatimTextOutput("result"),
  verbatimTextOutput("recipe")
)

# Define the Shiny app server
server <- function(input, output) {
  
  observeEvent(input$calculate, {
    desired_cocktail <- input$cocktail
    desired_amount <- input$amount
    desired_unit <- input$unit
    
    result <- calculate_quantities(desired_cocktail, desired_amount, desired_unit)
    
    if (!is.null(result)) {
      
      text_to_print <- result %>%
        mutate(text_print = paste0(ingredient, ": ", quantity, " ", unit)) %>%
        select(text_print) 
      
      names(text_to_print) <- NULL
      
      output$result <- renderText({
        text_header <- paste("Quantities needed to make ", desired_amount, " glass(es)", " of ", desired_cocktail, ": ")
        paste(c(text_header,unlist(text_to_print)), sep = " ", collapse = "\n")
        
      })
      
      output$recipe <- renderText({
        paste0(result$method[1])
      })
      
    } else {
      output$result <- renderText("Invalid cocktail name.")
    }
  })
}

# Run the Shiny app

shinyApp(ui = ui, server = server)



