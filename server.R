library(shiny)

server <- function(input, output) {
    
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