library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)
library(shinyWidgets)
library(plotly)
library(chartist)

source("themes.R")

header <- dashboardHeader(title = "Dashboard") # dashboardHeaderPlus()

sidebar <- dashboardSidebar(
    
    includeCSS("style.css"),
    
    sidebarMenu(
        br(),
        p("Nathália Campos",  align = "center"),
        hr(),
        menuItem("Dashboard", tabName = "dashboard", icon = icon("home")),
        menuItem("Graphs", tabName = "graph", icon = icon("far fa-area-chart")),
        menuItem("Box", tabName = "box", icon = icon("far fa-folder-open")),
        menuItem("Maps", tabName = "maps", icon = icon("fas fa-map-o")),
        menuItem("Others", tabName = "other", icon = icon("far fa-table")),
        menuItem("Others", tabName = "other2", icon = icon("far fa-folder-open")),
        menuItem("Others", tabName = "other3", icon = icon("far fa-folder-open")),
        menuItem("Others", tabName = "other4", icon = icon("far fa-folder-open"))
    )
)

body <- dashboardBody(
    my_purple_gradient, 
    tabItems(
        tabItem(
            tabName = "dashboard",
            fluidRow(

                box(width = 12,
                    p("Plotly - Line"), 
                    plotlyOutput("graph1", height = "200px")
                ),
                
                box(width = 4, 
                    p("Plotly - Bar", color = "black"), 
                    plotlyOutput("graph2", height = "200px")
                ),
                
                box(width = 4,
                    p("Plotly - Bar"), 
                    plotlyOutput("graph3", height = "200px")
                ),
                
                box(width = 4,
                    p("Plotly - Bar"), 
                    plotlyOutput("graph4", height = "200px")
                ),
                
                box(width = 6,
                    p("Chartist - Bar"),
                    chartistOutput("chartist1", height = "350px")
                ),
                
                box(width = 6, 
                    p("Chartist - Line"), 
                    chartistOutput("chartist2", height = "350px")
                ),
                
                box(width = 6, height = "320px",
                    p("Chartist - Pie"), 
                    chartistOutput("chartist3", height = "250px")
                ),
                
                box(width = 6, height = "320px",
                    p("Chartist - Point"), 
                    chartistOutput("chartist4", height = "250px")
                )
                
            )
        ),

        tabItem(
            tabName = "box",
            fluidRow(

                setShadow("box"),
                valueBox(10, "Hi!", icon = icon("tv"), color = "navy"), 
                valueBox(20, "Hi!", color = "navy", icon = icon("calendar")), 
                valueBox(30, "Hi!", color = "navy", icon = icon("apple")), 

                box(
                    width = 12,
                    background = "light-blue",
                    p("This is content. The background color is set to light-blue")
                ),
                fluidRow(
                    widgetUserBox(
                        title = "Nathália Campos",
                        subtitle = "R Developer",
                        type = 2,
                        src = "https://adminlte.io/themes/AdminLTE/dist/img/user7-128x128.jpg",
                        color = "yellow",
                        "Some text here!",
                        footer = "The footer here!"
                    ),
                    
                    widgetUserBox(
                        title = "Alexander Pierce",
                        subtitle = "Founder & CEO",
                        type = NULL,
                        src = "https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg",
                        color = "aqua-active",
                        "Some text here!"
                    )
                ),
                

                box(
                    solidHeader = FALSE,
                    title = "Status summary",
                    background = NULL,
                    width = 6,
                    status = "danger",
                    footer = fluidRow(
                        column(
                            width = 6,
                            descriptionBlock(
                                number = "17%",
                                number_color = "green",
                                number_icon = "fa fa-caret-up",
                                header = "$35,210.43",
                                text = "TOTAL REVENUE",
                                right_border = TRUE,
                                margin_bottom = FALSE
                            )
                        ),
                        column(
                            width = 6,
                            descriptionBlock(
                                number = "18%",
                                number_color = "red",
                                number_icon = "fa fa-caret-down",
                                header = "1200",
                                text = "GOAL COMPLETION",
                                right_border = FALSE,
                                margin_bottom = FALSE
                            )
                        )
                    )
                )
            )
        ),

        tabItem(
            tabName = "maps",
            fluidRow(
                box(title = "Mapa", width = 12,
                    plotlyOutput("plot")),

                verbatimTextOutput("click")
            )
        ),

        tabItem(
            tabName = "other"
        )
    )
)

ui <- dashboardPage(header, sidebar, body)
