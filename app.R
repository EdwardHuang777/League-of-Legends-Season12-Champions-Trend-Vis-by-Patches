#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

lol_champ_stats_season_12 = read_csv("data/League of Legends Champion Stats Season 12.csv")

patch_order = c(
  "12-1",
  "12-2",
  "12-3",
  "12-4",
  "12-5",
  "12-6",
  "12-7",
  "12-8",
  "12-9",
  "12-10",
  "12-11",
  "12-12",
  "12-13",
  "12-14",
  "12-15",
  "12-16",
  "12-17",
  "12-18",
  "12-19",
  "12-20",
  "12-21",
  "12-22",
  "12-23"
)

stats = c(c("Win %", "Role %", "Pick %", "Ban %"),"Win %","Role %", c("Pick %", "Ban %"))

# Define UI for application that draws a histogram
ui = navbarPage(
  title = "League of Legends Champions' Stats Season 12",
  tabPanel(
    title = "Visualization",
    titlePanel(title = "Champions' Data: Season 12"),
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = "champ", 
                    label = "Champion:", 
                    choices = sort(unique(lol_champ_stats_season_12$Name)), 
                    selected = sort(unique(lol_champ_stats_season_12$Name)[1])),
        selectInput(inputId = "role", 
                    label = "Role:", 
                    choices = sort(unique(lol_champ_stats_season_12$Role))),
        selectInput(inputId = "stat", 
                    label = "Statistics:", 
                    choices = sort(unique(lol_champ_stats_season_12$Type)),
                    multiple = TRUE),
        helpText("To undo a selection, press BackSpace."),
        
        checkboxInput(inputId = "score",
                      label = "Filter Table with Large Score",
                      value = FALSE)
      ),
      mainPanel(plotOutput("plot"))
    )
  ),
  tabPanel(title = "Table", dataTableOutput("table")),
  tabPanel(title = "About", includeMarkdown("about.Rmd"))
)

# Define server logic required to draw a histogram
server = function(input, output) {
  
  lol_champ = reactive({
    lol_champ_stats_season_12 %>%
      filter(Name == input$champ)
  })
  
  observeEvent(
    eventExpr = input$champ,
    handlerExpr = {
      updateSelectInput(inputId = "role", 
                        choices = sort(unique(lol_champ()$Role)))
    }
  )
  
  output$plot = renderPlot({
    
    lol_champ_stats_season_12 %>%
      filter(Name == input$champ) %>%
      filter(Role == input$role) %>%
      filter(Type %in% input$stat) %>%
      mutate(Patch = factor(Patch, levels = patch_order)) %>%
      ggplot() +
      aes(x = Patch, y = Rate, group = Type, color = Type) %>%
      geom_line() +
      theme_bw()
    
  })
  output$table = renderDataTable({
    tab = lol_champ() %>%
      pivot_wider(names_from = Type, values_from = Rate)
    if (input$score) {
      tab = tab %>%
        pick()
    }
    tab
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
