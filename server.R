library(shiny)

server <- function(input, output) {
    
    # Plotly Graphs ---------
    
    output$graph1 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3 ), y = c( 5, 6, 7), type = "scatter", mode = "lines") %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(plot_bgcolor = 'rgba(0, 0, 0, 0)')
    })
    
    output$graph2 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3), y = c( 5, 6, 7), type = "bar" , mode = "markers", 
                 marker = list(
                    color = 'rgba(50, 96, 171, 0.6)', 
                    line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1)))
    })
    
    output$graph3 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3), y = c( 5, 6, 7), type = "bar" , mode = "markers", 
                 marker = list(
                     color = 'rgba(50, 96, 171, 0.6)', 
                     line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1)))
    })
    
    output$graph4 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3), y = c( 5, 6, 7), type = "bar" , mode = "markers", 
                 marker = list(
                     color = 'rgba(50, 96, 171, 0.6)', 
                     line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1)))
    })
    
    # Chartist Graphs ---------
    
    output$chartist1 <- renderChartist({
        set.seed(324)
        data <- data.frame(
            day = 1:10,
            A   = runif(10, 0, 10),
            B   = runif(10, 0, 10),
            C   = runif(10, 0, 10),
            D   = runif(10, 0, 10)
        )
        
        chartist(data[1:6, ], day) + Bar()
        
        chartist(data, day) + Bar(stackBars = TRUE)
        
        # responsive chart
        chartist(data, day) +
            # By default, draw a normal bar chart
            Bar(stackBars = FALSE) +
            # For smaller screens, draw a stacked bar chart
            Bar(stackBars = TRUE, responsiveQuery = "screen and (max-width: 600px)") 
    })
    
    output$chartist2 <- renderChartist({
        set.seed(324)
        data <- data.frame(
            day = 1:20,
            A   = runif(20, 0, 10),
            B   = runif(20, 0, 10),
            C   = runif(20, 0, 10),
            D   = runif(20, 0, 10)
        )
        
        chartist(data, day) + Line(showArea = TRUE, showPoint = FALSE)
        
        # use JS function to generate axis labels
        interp <- JS_interp(interval = 4, prefix = " day")
        chartist(data, day) + Line(x_labelInterpolationFnc = interp)
        
        # Of cource you can create your own JS function
        interp2 <- htmlwidgets::JS("function(value, index) {
                             return index % 7 === 0 ? 'week ' + (index / 7) : null;}")
        chartist(data, day) + Line(x_labelInterpolationFnc = interp2)
        
        # these are the same
        chartist(data, day) + Point()
        chartist(data, day) + Line(showLine = FALSE)
        
        # responsive chart
        set.seed(324)
        data <- data.frame(
            day = 1:10,
            A   = runif(10, 0, 10),
            B   = runif(10, 0, 10),
            C   = runif(10, 0, 10)
        )
        
        chartist(data, day) +
            # By default, the axis labels are day-bases
            Line(x_labelInterpolationFnc = JS_interp(interval = 1, prefix = "day")) +
            # For small screens, they are week-bases
            Line(x_labelInterpolationFnc = JS_interp(interval = 7, prefix = "week"),
                 showPoint = FALSE,
                 responsiveQuery = "screen and (max-width: 600px)")
    })
    
    # Others Graphs ---------
    
    # Outro
    output$plot <- renderPlotly({
        # specify some map projection/options
        g <- list(
            scope = 'usa',
            projection = list(type = 'albers usa'),
            lakecolor = toRGB('white'))
        
        plot_ly(z = state.area, text = state.name, locations = state.abb, type = 'choropleth', 
                locationmode = 'USA-states') %>%
            layout(geo = g)
    })
    
    output$click <- renderPrint({
        d <- event_data("plotly_click")
        if (is.null(d)) "Click on a state to view event data" else d
    })
    
}