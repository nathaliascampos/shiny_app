library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)
library(shinyWidgets)
library(plotly)
library(chartist)
library(chartjs)
library(stringr)
library(highcharter)

source("themes.R")

header <- dashboardHeader(title = textOutput("text_header"))

# sidebar ----
sidebar <- dashboardSidebar(
    
    includeCSS("style.css"),
    
    sidebarMenu(
        id = "siderbarmenu",
        br(), p("Nathália Campos",  align = "center"), hr(),
        menuItem("Dashboard", tabName = "dashboard", icon = icon("home")),
        menuItem("Graphs", icon = icon("far fa-area-chart"),
            menuSubItem("Highcharter", tabName = "highchart", icon = icon("far fa-area-chart")),
            menuSubItem("ChartJS", tabName = "chartjs", icon = icon("far fa-area-chart")),
            menuSubItem("Plotly", tabName = "plotly", icon = icon("far fa-area-chart")),
            menuSubItem("Chartist", tabName = "chartist", icon = icon("far fa-area-chart"))
        ),
        menuItem("Box", tabName = "box", icon = icon("far fa-folder-open")),
        menuItem("Maps", tabName = "maps", icon = icon("fas fa-map-o")),
        menuItem("Others", tabName = "other", icon = icon("far fa-table")),
        menuItem("Others", tabName = "other2", icon = icon("far fa-folder-open")), 
        menuItem("Others", tabName = "other", icon = icon("far fa-table")),
        menuItem("Others", tabName = "other2", icon = icon("far fa-folder-open"))
    )
)

# --- BODY 
# dashboard ----
dash <- tabItem(
    tabName = "dashboard",
    fluidRow(
        
        box(width = 12,
            p("ChartJS - Line and Bar"), 
            radioGroupButtons(
                inputId = "button_plot1", width = "150px", 
                label = "", 
                choices = c(`<i class='fa fa-line-chart'></i>` = "line", `<i class='fa fa-bar-chart'></i>` = "bar"), 
                justified = TRUE 
            ), 
            h5("."),
            chartjsOutput("plot1", height = "25px")
        ), 
        
        box(width = 4, 
            p("ChartJS - Bar"),
            chartjsOutput("plot2", height = "50px")
        ),
        
        box(width = 4, p("Plotly - Bar"), 
            plotlyOutput("plot3", height = "170px")
        ),
        
        box(width = 4, p("Plotly - Bar"), 
            plotlyOutput("plot4", height = "170px")
        )
        
    )
)

# highchart ----
highchart <- tabItem(
    tabName = "highchart", 
    fluidRow(
        
        box(width = 12, 
            p("Highcharter"),
            highchartOutput("high1", height = "350px")
        ),
        box(width = 6, 
            p("Highcharter"),
            highchartOutput("high2", height = "250px")
        ),
        box(width = 6, 
            p("Highcharter"),
            highchartOutput("high3", height = "250px")
        ),
        br(), 
        box(width = 6, 
            p("Highcharter"),
            highchartOutput("high4", height = "250px")
        ),
        box(width = 6, 
            p("Highcharter"),
            highchartOutput("high5", height = "250px")
        )
        
    )
)

# chartjs ----
chartjs <- tabItem(
    tabName = "chartjs",
    fluidRow(
        
        box(width = 12,
            p("ChartJS - Line and Bar"), 
            radioGroupButtons(
                inputId = "button_chartjs1", width = "150px", 
                label = "", 
                choices = c(`<i class='fa fa-line-chart'></i>` = "line", `<i class='fa fa-bar-chart'></i>` = "bar"), 
                justified = TRUE 
            ),
            chartjsOutput("chartjs1", height = "35px")
        ),
        
        box(width = 4, 
            p("ChartJS - Bar", color = "black"), 
            chartjsOutput("chartjs2", height = "100px")
        ),
        
        box(width = 4,
            p("ChartJS - Bar"), 
            plotlyOutput("chartjs3", height = "100px")
        ),
        
        box(width = 4,
            p("ChartJS - Bar"), 
            plotlyOutput("chartjs4", height = "100px")
        )
    )
)

# plotly ----
plotly <- tabItem(
    tabName = "plotly",
    fluidRow(
        
        box(width = 12,
            p("Plotly - Line"), 
            plotlyOutput("graph1", height = "200px")
        ),
        
        box(width = 4, 
            p("Plotly - Bar"), 
            plotlyOutput("graph2", height = "200px")
        ),
        
        box(width = 4,
            p("Plotly - Bar"), 
            plotlyOutput("graph3", height = "200px")
        ),
        
        box(width = 4,
            p("Plotly - Bar"), 
            plotlyOutput("graph4", height = "200px")
        )
    )
)

# chartist ----
chartist <- tabItem(
    tabName = "chartist",
    fluidRow(
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
)

# box ----
box <- tabItem(
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
)

# map ----
map <- tabItem(
    tabName = "maps",
    fluidRow(
        box(width = 12,
            highchartOutput("map_highchart1", height = "450px")
        ),
        box(width = 12,
            highchartOutput("map_highchart2", height = "400px")
        ),
        box(title = "Mapa", width = 12,
            plotlyOutput("plot")
        ),
        verbatimTextOutput("click")
    )
)

# body ----
body <- dashboardBody(
    black, 
    tabItems( dash, highchart, chartjs, plotly, chartist, box, map )
)

# ui ----
ui <- dashboardPage(header, sidebar, body, title = "Shiny App")
