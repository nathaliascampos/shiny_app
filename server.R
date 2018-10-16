library(shiny)

server <- function(input, output) {
    
    output$text_header <- renderText({
        paste(str_to_upper(input$siderbarmenu))
    })
    
    # Variáveis globais ----
    
    meses <- c("Jan", "Feb", "Mar", "Apr", "Maio","Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dec")
    dados1 <- c(90, 100, 70, 80, 120, 80, 100, 80, 100, 90, 110, 120)
    dados2 <- c(120, 110, 90, 100, 80, 100, 80, 120, 80, 70, 100, 100)
    valor <- data.frame(meses, dados1, dados2)
    
    x <- list(
        showgrid = FALSE,
        tickfont = list(color = "rgb(180, 180, 180)" )
    )
    
    y <- list(
        # showgrid = FALSE, 
        tickfont = list(color = "rgb(180, 180, 180)" )
    )
    
    # Dashboard ---------
    
    output$plot1 <- renderChartjs({
        
        if(input$button_plot1 == "line")
            chartjs() %>% 
                cjsLine(labels = valor$meses) %>% # labels = row.names(mtcars)
                cjsSeries(data = mtcars$mpg[1:12], label = "MPG") %>% 
                cjsSeries(data = mtcars$qsec[1:12], label = "QSEC") %>% 
                cjsTooltips(mode = "label", bodyFontSize = 12)
        else
            chartjs() %>% 
                cjsBar(labels = valor$meses) %>% 
                cjsSeries(data = mtcars$mpg, label = "MPG") %>% 
                cjsSeries(data = mtcars$qsec, label = "QSEC") %>% 
                cjsTooltips(mode = "label", bodyFontSize = 12)
        
    })
    
    output$plot2 <- renderChartjs({
        
        chartjs() %>%
            cjsLine(labels = valor$meses[4:9] ) %>%
            cjsSeries(data = c(80, 100, 70, 80, 120, 80), label = "MPG")
    })
    
    output$plot3 <- renderPlotly({
        
        plot_ly(x = valor$meses[5:10], y = valor$dados2[5:10], 
                type = "bar" , mode = "markers", 
                marker = list(
                    color = 'rgba(50, 96, 171, 0.6)', 
                    line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1))) %>% 
            layout(xaxis = list(categoryorder = "array", categoryarray = meses[5:10])) %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(xaxis = x, yaxis = y)
    })
    
    output$plot4 <- renderPlotly({
        
        plot_ly (x = valor$meses[1:6], y = valor$dados1[1:6], type = "scatter" , mode = "lines+markers") %>% 
            layout(xaxis = list(categoryorder = "array", categoryarray = meses[1:6])) %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(xaxis = x, yaxis = y)
        
        # plot_ly() %>% add_lines(x = valor$meses, y = valor$dados)
    })
    
    # Highcharter Graphs ---------
    
    output$high1 <- renderHighchart({
    
        highchart() %>% 
            hc_chart(type = "line") %>% 
            hc_xAxis(categories = valor$meses) %>% 
            hc_add_series(valor$dados1, name = "Valor 1") %>% 
            hc_add_series(valor$dados2, name = "Valor 2") %>%  
            hc_colors(colors = list('#2f7ed8', '#1aadce')) 
        
    })
    
    output$high2 <- renderHighchart({
        
        highchart() %>% 
            hc_chart(type = "column") %>% 
            hc_xAxis(categories = valor$meses) %>% 
            hc_add_series(valor$dados1, name = "Valor 1")
        
    })
    
    output$high3 <- renderHighchart({
        
        highchart() %>% 
            hc_chart(type = "spline") %>% 
            hc_xAxis(categories = valor$meses) %>% 
            hc_add_series(valor$dados2, name = "Valor 1")
        
    })
    
    output$high4 <- renderHighchart({
        
        highchart() %>% 
            hc_chart(type = "column") %>% 
            hc_xAxis(categories = valor$meses) %>% 
            hc_add_series(valor$dados1, name = "Valor 1") %>% 
            hc_add_theme(hc_theme_monokai())
        
    })
    
    output$high5 <- renderHighchart({
        
        highchart() %>% 
            hc_chart(type = "spline") %>% 
            hc_xAxis(categories = valor$meses) %>% 
            hc_add_series(valor$dados2, name = "Valor 1") %>% 
            hc_add_theme(hc_theme_sandsignika())
        
    })
    
    # ChartJS Graphs ---------
    
    output$chartjs1 <- renderChartjs({
        
        if(input$button_chartjs1 == "line")
            chartjs() %>% 
                cjsLine(labels = row.names(mtcars)) %>% 
                cjsSeries(data = mtcars$mpg, label = "MPG") %>% 
                cjsSeries(data = mtcars$qsec, label = "QSEC") %>% 
                cjsTitle("Mtcars - mpg and qsec")
        else
            chartjs() %>% 
                cjsBar(labels = row.names(mtcars)) %>% 
                cjsSeries(data = mtcars$mpg) %>% 
                cjsSeries(data = mtcars$qsec) %>% 
                cjsTitle("Mtcars - mpg and qsec")
        
    })
    
    output$chartjs2 <- renderChartjs({
        chartjs() %>% 
            cjsOptions(animation = list(animateScale = TRUE, animateRotate = FALSE)) %>%
            cjsDoughnut(cutout = 50, labels = LETTERS[1:4]) %>%
            cjsSeries(data = c(1:4)) %>% 
            cjsLegend()
    })
    
    # Plotly Graphs ---------
    
    output$graph1 <- renderPlotly({
        
        plot_ly (x = valor$meses, y = valor$dados1, type = "scatter", mode = "lines+markers") %>% 
            layout(xaxis = list(categoryorder = "array", categoryarray = meses)) %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(xaxis = x, yaxis = y)
        
        # tirar cor do fundo: 
            # layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)')
    })
    
    output$graph2 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3), y = c( 5, 6, 7), type = "bar" , mode = "markers", 
                 marker = list(
                    color = 'rgba(50, 96, 171, 0.6)', 
                    line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1))) %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(xaxis = x, yaxis = y)
    })
    
    output$graph3 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3), y = c( 5, 6, 7), type = "bar" , mode = "markers", 
                 marker = list(
                     color = 'rgba(50, 96, 171, 0.6)', 
                     line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1))) %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(xaxis = x, yaxis = y)
    })
    
    output$graph4 <- renderPlotly({
        plot_ly (x = c( 1, 2, 3), y = c( 5, 6, 7), type = "bar" , mode = "markers", 
                 marker = list(
                     color = 'rgba(50, 96, 171, 0.6)', 
                     line = list(color = 'rgba(50, 96, 171, 1.0)', width = 1))) %>% 
            layout(paper_bgcolor = 'rgba(0, 0, 0, 0)', plot_bgcolor = 'rgba(0, 0, 0, 0)') %>% 
            layout(xaxis = x, yaxis = y)
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
    
    output$chartist3 <- renderChartist({
        set.seed(324)
        data <- data.frame(
            day = 1:20,
            A   = runif(20, 0, 10),
            B   = runif(20, 0, 10),
            C   = runif(20, 0, 10),
            D   = runif(20, 0, 10)
        )
        
        # Only first data series is used for Pie(). So, these two draw the same chart.
        interp <- JS_interp(prefix = "Item ")
        chartist(data, day) + Pie(labelInterpolationFnc = interp)
        chartist(subset(data, ,1), day) + Pie(labelInterpolationFnc = interp)
        
        # responsive chart
        chartist(data[1:4, ], day) +
            # by default, draw a donut chart
            Pie(donut = TRUE, donutWidth = 100) +
            # for smaller screens, draw a normal pie chart
            Pie(donut = FALSE, showLabel = FALSE, responsiveQuery = "screen and (max-width: 600px)")
        
        # By default, Chartist knows only four colours
        # (c.f. https://github.com/gionkunz/chartist-js/issues/79)
        # Corrently Pie() cannot work well with data whose length is more than four
        chartist(data, day) + Pie()
    })
    
    output$chartist4 <- renderChartist({
        set.seed(324)
        data <- data.frame(
            day = paste0("day", 1:20),
            A   = runif(10, 0, 20),
            B   = runif(10, 0, 20),
            C   = runif(10, 0, 20),
            D   = runif(10, 0, 20),
            E   = runif(10, 0, 20),
            stringsAsFactors = FALSE
        )
        
        # a simple example
        chartist(data, day) + Point() +
            SVG_animate(target = "point", offset = -30, style = "x1")
        
        # `offset` is used as the absolute value when
        #   1) relative = FALSE
        #   2) style = "opacity"
        chartist(data, day) +
            SVG_animate(target = "line", offset = 0, style = "opacity")
        
        # If you want to animate things sequentially, you can use `delay` parameter.
        chartist(data, day) +
            SVG_animate(target = "line", style = "opacity", offset = 0, delay = 300)
        
        # You can even overlay animations.
        chartist(data, day) + 
            Point() +
            SVG_animate(target = "point", style = "x1", offset = -100, delay = 5) +
            SVG_animate(target = "point", style = "y1", offset = 100, delay = 3) +
            SVG_animate(target = "point", style = "opacity", offset = 0, delay = 5)
    })

    # Maps ------
    
    output$map_highchart1 <- renderHighchart({
        
        mapdata <- get_data_from_map(download_map_data("custom/world"))
        set.seed(1234)
        
        data_fake <- mapdata %>% 
            select(code = `hc-a2`) %>% 
            mutate(value = 1e5 * abs(rt(nrow(.), df = 10)))
        
        hcmap("custom/world", data = data_fake, value = "value",
              joinBy = c("hc-a2", "code"), name = "Mundo",
              dataLabels = list(enabled = TRUE, format = '{point.name}'),
              borderColor = "#000", borderWidth = 0.3,
              tooltip = list(valueDecimals = 2)) %>% 
            hc_title(text = "Estados Unidos", style = list(color = "#fff")) %>% 
            hc_mapNavigation(enableMouseWheelZoom = TRUE, enableDoubleClickZoomTo = TRUE, 
                             enableButtons = TRUE, buttonOptions = list(verticalAlign = "bottom")) %>% 
            hc_colorAxis(stops = list(list(0, '#F1EEF6'), list(0.45, '#900037'), list(1, '#500007')) ) %>% 
            hc_exporting(enabled = TRUE)
        
    })
    
    output$map_highchart2 <- renderHighchart({
        
        mapdata <- get_data_from_map(download_map_data("countries/br/br-all"))
        set.seed(1234)
        
        data_fake <- mapdata %>% 
            select(code = `hc-a2`) %>% 
            mutate(value = 1e5 * abs(rt(nrow(.), df = 10)))
        
        hcmap("countries/br/br-all", data = data_fake, value = "value",
              joinBy = c("hc-a2", "code"), name = "",
              dataLabels = list(enabled = TRUE, format = '{point.name}'),
              borderColor = "#000", borderWidth = 0.3,
              tooltip = list(valueDecimals = 2)) %>% 
            hc_title(text = "Brasil", style = list(color = "#fff")) %>% 
            hc_mapNavigation(enableMouseWheelZoom = TRUE, enableDoubleClickZoomTo = TRUE, 
                             enableButtons = TRUE, buttonOptions = list(verticalAlign = "bottom") )
    })
    
    # Others ---------
    
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