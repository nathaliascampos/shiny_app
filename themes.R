# Cor 4I: "rgb(27, 53, 119)" to "rgb(136, 168, 234)"

# ---- MEUS ----

### my_blue ---------------------------------------------------
my_blue <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial" 
    ,appFontColor = "rgb(0,0,0)" 
    ,bodyBackColor = "rgb(255,255,255)"
    
    ### header
    ,logoBackColor = "rgb(255,255,255)" 
    
    ,headerButtonBackColor = "rgb(255,255,255)" 
    ,headerButtonIconColor = "rgb(0,0,0)" 
    ,headerButtonBackColorHover = "rgb(255,255,255)" 
    ,headerButtonIconColorHover = "rgb(0,0,0)" 
    
    ,headerBackColor = "rgb(255,255,255)" 
    ,headerBoxShadowColor = ""
    ,headerBoxShadowSize = "0px 0px 0px"
    
    ### sidebar
    ,sidebarBackColor = "rgb(255,255,255)"
    
    ,sidebarShadowRadius = ""
    ,sidebarPadding = 10
    ,sidebarShadowColor = "0px 0px 0px"
    
    ,sidebarMenuBackColor = "rgb(27, 53, 119)"
   
    ,sidebarMenuPadding = 5
    ,sidebarMenuBorderRadius = 20
    
    ,sidebarUserTextColor = "rgb(128,177,221)"
    
    ,sidebarSearchBackColor = "rgb(40,70,115)"
    ,sidebarSearchIconColor = "rgb(50,115,145)"
    ,sidebarSearchBorderColor = "rgb(30,60,105)"
    
    ,sidebarTabTextColor = "rgb(128,177,221)"
    ,sidebarTabTextSize = 13
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorSelected = "rgb(255,255,255)"
    ,sidebarTabRadiusSelected = "30px"
    
    ,sidebarTabBackColorHover = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorHover = "rgb(255,255,255)"
    ,sidebarTabBorderStyleHover = "none"
    ,sidebarTabBorderColorHover = "none"
    ,sidebarTabBorderWidthHover = 0
    ,sidebarTabRadiusHover = "30px"
    
    ### boxes
    ,boxBackColor = "rgba(255,255,255,0)"
    ,boxBorderRadius = 15
    ,boxShadowSize = "0px 0px 0px"
    ,boxShadowColor = ""
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(49,56,107)"
    ,boxPrimaryColor = "rgb(141,192,241)"
    ,boxSuccessColor = "rgb(64,186,170)"
    ,boxWarningColor = "rgb(255,217,144)"
    ,boxDangerColor = "rgb(249,144,144)"
    
    ,tabBoxTabColor = "rgb(80,95,155)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(128,177,221)"
    ,tabBoxTabTextColorSelected = "rgb(255,255,255)"
    
    ,tabBoxBackColor = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(70,75,125)"
        ,colorMiddle = "rgb(65,79,129)"
        ,colorEnd = "rgb(55,70,120)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,tabBoxHighlightColor = "rgb(80,95,155)"
    ,tabBoxBorderRadius = 15
    
    ### inputs
    
    ,buttonBackColor = "rgb(245,245,245)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(200,200,200)"
    ,buttonBorderRadius = 15
    
    ,buttonBackColorHover = "rgb(235,235,235)"
    ,buttonTextColorHover = "rgb(100,100,100)"
    ,buttonBorderColorHover = "rgb(200,200,200)"
    
    ,textboxBackColor = "rgb(40,70,115)"
    ,textboxBorderColor = "rgb(30,60,105)"
    ,textboxBorderRadius = 20
    ,textboxBackColorSelect = "rgb(40,70,115)"
    ,textboxBorderColorSelect = "rgb(30,60,105)"
    
    ### tables
    ,tableBackColor = "transparent"
    ,tableBorderColor = "rgb(80,95,155)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)

### black ---------------------------------------------------
black <- shinyDashboardThemeDIY(
    
    # "rgb(29,30,46)" -> azul fundo box
    # "rgb(40,41,61)" -> azul fundo box
    
    # "rgb(29,139,247)" -> degrade sidebar
    # "rgb(28,128,247)" to "rgb(42,126,246)" to "rgb(61,121,244)" -> degrade sidebar
    
    ### general
    appFontFamily = "Arial" 
    ,appFontColor = "rgb(255,255,255)" 
    ,bodyBackColor = "rgb(29,30,46)"
    
    ### header
    ,logoBackColor = "rgb(29,30,46)" 
    
    ,headerButtonBackColor = "rgb(29,30,46)" 
    ,headerButtonIconColor = "rgb(0,0,0)" 
    ,headerButtonBackColorHover = "rgb(255,255,255)" 
    ,headerButtonIconColorHover = "rgb(0,0,0)" 
    
    ,headerBackColor = "rgb(29,30,46)" # 
    ,headerBoxShadowColor = ""
    ,headerBoxShadowSize = "0px 0px 0px"
    
    ### sidebar
    ,sidebarBackColor = "rgb(29,30,46)"
    
    ,sidebarShadowRadius = ""
    ,sidebarPadding = 10
    ,sidebarShadowColor = "0px 0px 0px"
    
    # ,sidebarMenuBackColor = "rgb(27, 53, 119)"
    ,sidebarMenuBackColor = cssGradientThreeColors(
        direction = "down"
        ,colorStart = "rgb(29,139,247)"
        ,colorMiddle = "rgb(42,126,246)"
        ,colorEnd = "rgb(61,121,244)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    
    ,sidebarMenuPadding = 5
    ,sidebarMenuBorderRadius = 5
    
    ,sidebarUserTextColor = "rgb(128,177,221)"
    
    ,sidebarSearchBackColor = "rgb(40,70,115)"
    ,sidebarSearchIconColor = "rgb(50,115,145)"
    ,sidebarSearchBorderColor = "rgb(30,60,105)"
    
    ,sidebarTabTextColor = "rgb(128,177,221)"
    ,sidebarTabTextSize = 13
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorSelected = "rgb(255,255,255)"
    ,sidebarTabRadiusSelected = "30px"
    
    ,sidebarTabBackColorHover = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorHover = "rgb(255,255,255)"
    ,sidebarTabBorderStyleHover = "none"
    ,sidebarTabBorderColorHover = "none"
    ,sidebarTabBorderWidthHover = 0
    ,sidebarTabRadiusHover = "30px"
    
    ### boxes
    ,boxBackColor = "rgba(40,41,61, 0.5)" # "rgba(0,0,0,0.05)"
    ,boxBorderRadius = 5
    ,boxShadowSize = "0px 0px 0px"
    ,boxShadowColor = ""
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgba(0,0,0,0.1)" # "rgb(49,56,107)"
    ,boxPrimaryColor = "rgb(141,192,241)"
    ,boxSuccessColor = "rgb(64,186,170)"
    ,boxWarningColor = "rgb(255,217,144)"
    ,boxDangerColor = "rgb(249,144,144)"
    
    ,tabBoxTabColor = "rgb(80,95,155)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(128,177,221)"
    ,tabBoxTabTextColorSelected = "rgb(255,255,255)"
    
    ,tabBoxBackColor = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(70,75,125)"
        ,colorMiddle = "rgb(65,79,129)"
        ,colorEnd = "rgb(55,70,120)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,tabBoxHighlightColor = "rgb(80,95,155)"
    ,tabBoxBorderRadius = 15
    
    ### inputs
    
    ,buttonBackColor = "rgb(245,245,245)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(200,200,200)"
    ,buttonBorderRadius = 15
    
    ,buttonBackColorHover = "rgb(235,235,235)"
    ,buttonTextColorHover = "rgb(100,100,100)"
    ,buttonBorderColorHover = "rgb(200,200,200)"
    
    ,textboxBackColor = "rgb(40,70,115)"
    ,textboxBorderColor = "rgb(30,60,105)"
    ,textboxBorderRadius = 20
    ,textboxBackColorSelect = "rgb(40,70,115)"
    ,textboxBorderColorSelect = "rgb(30,60,105)"
    
    ### tables
    ,tableBackColor = "transparent"
    ,tableBorderColor = "rgb(80,95,155)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)
# ------------------------
### ---- CUSTOMIZADOS ----

### my_purple_gradient ---------------------------------------------------
my_purple_gradient <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial" # Poppins - tentar colocar essa
    ,appFontColor = "rgb(128,177,221)"
    ,bodyBackColor = "rgb(255,255,255)"
    
    ### header
    ,logoBackColor = "rgb(255,255,255)" # ,logoBackColor = "rgb(49,56,107)"
    
    ,headerButtonBackColor = "rgb(255,255,255)" # ,headerButtonBackColor = "rgb(49,56,107)"
    ,headerButtonIconColor = "rgb(0,0,0)" # ,headerButtonIconColor = "rgb(62,133,179)"
    ,headerButtonBackColorHover = "rgb(255,255,255)" # ,headerButtonBackColorHover = "rgb(49,56,107)"
    ,headerButtonIconColorHover = "rgb(0,0,0)" # ,headerButtonIconColorHover = "rgb(255,255,255)"
    
    ,headerBackColor = "rgb(255,255,255)" # ,headerBackColor = "rgb(49,56,107)"
    ,headerBoxShadowColor = ""
    ,headerBoxShadowSize = "0px 0px 0px"
    
    ### sidebar
    ,sidebarBackColor = "rgb(255,255,255)"
    # ,sidebarBackColor = cssGradientThreeColors(
    #     direction = "down"
    #     ,colorStart = "rgb(49,56,107)"
    #     ,colorMiddle = "rgb(71,59,109)"
    #     ,colorEnd = "rgb(78,88,149)"
    #     ,colorStartPos = 0
    #     ,colorMiddlePos = 70
    #     ,colorEndPos = 100
    # )
    
    ,sidebarShadowRadius = ""
    ,sidebarPadding = 10
    ,sidebarShadowColor = "0px 0px 0px"
    
    ,sidebarMenuBackColor = "rgb(27, 53, 119)"
    # ,sidebarMenuBackColor = cssGradientThreeColors(
    #     direction = "right"
    #     ,colorStart = "rgb(48,103,157)" # "rgb(33,135,247)" 
    #     ,colorMiddle = "rgb(65,79,129)" # "rgb(51,125,246)" 
    #     ,colorEnd = "rgb(55,70,120)" # "rgb(61,121,244)"
    #     ,colorStartPos = 0
    #     ,colorMiddlePos = 30
    #     ,colorEndPos = 100
    # )
    ,sidebarMenuPadding = 5
    ,sidebarMenuBorderRadius = 20
    
    ,sidebarUserTextColor = "rgb(128,177,221)"
    
    ,sidebarSearchBackColor = "rgb(40,70,115)"
    ,sidebarSearchIconColor = "rgb(50,115,145)"
    ,sidebarSearchBorderColor = "rgb(30,60,105)"
    
    ,sidebarTabTextColor = "rgb(128,177,221)"
    ,sidebarTabTextSize = 13
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorSelected = "rgb(255,255,255)"
    ,sidebarTabRadiusSelected = "30px"
    
    ,sidebarTabBackColorHover = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorHover = "rgb(255,255,255)"
    ,sidebarTabBorderStyleHover = "none"
    ,sidebarTabBorderColorHover = "none"
    ,sidebarTabBorderWidthHover = 0
    ,sidebarTabRadiusHover = "30px"
    
    ### boxes
    ,boxBackColor = "rgba(255,255,255,0)"
    # ,boxBackColor = cssGradientThreeColors(
    #     direction = "right"
    #     ,colorStart = "rgb(70,75,125)"
    #     ,colorMiddle = "rgb(65,79,129)"
    #     ,colorEnd = "rgb(55,70,120)"
    #     ,colorStartPos = 0
    #     ,colorMiddlePos = 30
    #     ,colorEndPos = 100
    # )
    ,boxBorderRadius = 15
    ,boxShadowSize = "0px 0px 0px"
    ,boxShadowColor = ""
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(49,56,107)"
    ,boxPrimaryColor = "rgb(141,192,241)"
    ,boxSuccessColor = "rgb(64,186,170)"
    ,boxWarningColor = "rgb(255,217,144)"
    ,boxDangerColor = "rgb(249,144,144)"
    
    ,tabBoxTabColor = "rgb(80,95,155)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(128,177,221)"
    ,tabBoxTabTextColorSelected = "rgb(255,255,255)"
    
    ,tabBoxBackColor = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(70,75,125)"
        ,colorMiddle = "rgb(65,79,129)"
        ,colorEnd = "rgb(55,70,120)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,tabBoxHighlightColor = "rgb(80,95,155)"
    ,tabBoxBorderRadius = 15
    
    ### inputs
    
    ,buttonBackColor = "rgb(245,245,245)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(200,200,200)"
    ,buttonBorderRadius = 15
    # ,buttonBackColor = "rgb(72,190,229)"
    # ,buttonTextColor = "rgb(40,63,106)"
    # ,buttonBorderColor = "rgb(72,190,229)"
    # ,buttonBorderRadius = 20
    
    ,buttonBackColorHover = "rgb(235,235,235)"
    ,buttonTextColorHover = "rgb(100,100,100)"
    ,buttonBorderColorHover = "rgb(200,200,200)"
    # ,buttonBackColorHover = "rgb(115,210,240)"
    # ,buttonTextColorHover = "rgb(255,255,255)"
    # ,buttonBorderColorHover = "rgb(115,210,240)"
    
    ,textboxBackColor = "rgb(40,70,115)"
    ,textboxBorderColor = "rgb(30,60,105)"
    ,textboxBorderRadius = 20
    ,textboxBackColorSelect = "rgb(40,70,115)"
    ,textboxBorderColorSelect = "rgb(30,60,105)"
    
    ### tables
    ,tableBackColor = "transparent"
    ,tableBorderColor = "rgb(80,95,155)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)

### my_blue_gradient ---------------------------------------------------
my_blue_gradient <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial"
    ,appFontColor = "rgb(0,0,0)"
    ,bodyBackColor = "rgb(248,248,248)"  #,bodyBackColor = "rgb(248,248,248)"
    
    ### header
    ,logoBackColor = "rgb(23,103,124)"
    
    ,headerButtonBackColor = "rgb(238,238,238)"
    ,headerButtonIconColor = "rgb(75,75,75)"
    ,headerButtonBackColorHover = "rgb(210,210,210)"
    ,headerButtonIconColorHover = "rgb(0,0,0)"
    
    ,headerBackColor = "rgb(238,238,238)"
    ,headerBoxShadowColor = "#aaaaaa"
    ,headerBoxShadowSize = "2px 2px 2px"
    
    ### sidebar
    ,sidebarBackColor = cssGradientThreeColors(
        direction = "down"
        ,colorStart = "rgb(28,138,247)" # ,colorStart = "rgb(20,97,117)"
        ,colorMiddle = "rgb(44,125,246)" # ,colorMiddle = "rgb(56,161,187)"
        ,colorEnd = "rgb(61,121,244)" # ,colorEnd = "rgb(3,22,56)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarPadding = 0
    
    ,sidebarMenuBackColor = "transparent"
    ,sidebarMenuPadding = 0
    ,sidebarMenuBorderRadius = 0
    
    ,sidebarShadowRadius = "3px 5px 5px"
    ,sidebarShadowColor = "#aaaaaa"
    
    ,sidebarUserTextColor = "rgb(255,255,255)"
    
    ,sidebarSearchBackColor = "rgb(55,72,80)"
    ,sidebarSearchIconColor = "rgb(153,153,153)"
    ,sidebarSearchBorderColor = "rgb(55,72,80)"
    
    ,sidebarTabTextColor = "rgb(255,255,255)"
    ,sidebarTabTextSize = 13
    ,sidebarTabBorderStyle = "none none solid none"
    ,sidebarTabBorderColor = "rgb(35,106,135)"
    ,sidebarTabBorderWidth = 1
    
    ,sidebarTabBackColorSelected = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgba(44,222,235,1)"
        ,colorMiddle = "rgba(44,222,235,1)"
        ,colorEnd = "rgba(0,255,213,1)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorSelected = "rgb(0,0,0)"
    ,sidebarTabRadiusSelected = "0px 20px 20px 0px"
    
    ,sidebarTabBackColorHover = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgba(44,222,235,1)"
        ,colorMiddle = "rgba(44,222,235,1)"
        ,colorEnd = "rgba(0,255,213,1)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorHover = "rgb(50,50,50)"
    ,sidebarTabBorderStyleHover = "none none solid none"
    ,sidebarTabBorderColorHover = "rgb(75,126,151)"
    ,sidebarTabBorderWidthHover = 1
    ,sidebarTabRadiusHover = "0px 20px 20px 0px"
    
    ### boxes
    ,boxBackColor = "rgba(34,42,66,0)" # ,boxBackColor = "rgb(255,255,255)"
    ,boxBorderRadius = 5
    ,boxShadowSize = "0px 1px 1px"
    ,boxShadowColor = "rgba(0,0,0,.1)"
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(210,214,220)"
    ,boxPrimaryColor = "rgba(44,222,235,1)"
    ,boxSuccessColor = "rgba(0,255,213,1)"
    ,boxWarningColor = "rgb(244,156,104)"
    ,boxDangerColor = "rgb(255,88,55)"
    
    ,tabBoxTabColor = "rgb(255,255,255)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(0,0,0)"
    ,tabBoxTabTextColorSelected = "rgb(0,0,0)"
    ,tabBoxBackColor = "rgb(255,255,255)"
    ,tabBoxHighlightColor = "rgba(44,222,235,1)"
    ,tabBoxBorderRadius = 5
    
    ### inputs
    ,buttonBackColor = "rgb(245,245,245)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(200,200,200)"
    ,buttonBorderRadius = 5
    
    ,buttonBackColorHover = "rgb(235,235,235)"
    ,buttonTextColorHover = "rgb(100,100,100)"
    ,buttonBorderColorHover = "rgb(200,200,200)"
    
    ,textboxBackColor = "rgb(255,255,255)"
    ,textboxBorderColor = "rgb(200,200,200)"
    ,textboxBorderRadius = 5
    ,textboxBackColorSelect = "rgb(245,245,245)"
    ,textboxBorderColorSelect = "rgb(200,200,200)"
    
    ### tables
    ,tableBackColor = "rgb(255,255,255)"
    ,tableBorderColor = "rgb(240,240,240)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
)


### my_grey_dark ---------------------------------------------------
my_grey_dark <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial"
    ,appFontColor = "rgb(205,205,205)"
    ,bodyBackColor = "rgb(45,55,65)"
    
    ### header
    ,logoBackColor = "rgb(70,80,90)"
    
    ,headerButtonBackColor = "rgb(70,80,90)"
    ,headerButtonIconColor = "rgb(25,35,45)"
    ,headerButtonBackColorHover = "rgb(40,50,60)"
    ,headerButtonIconColorHover = "rgb(0,0,0)"
    
    ,headerBackColor = "rgb(70,80,90)"
    ,headerBoxShadowColor = ""
    ,headerBoxShadowSize = "0px 0px 0px"
    
    ### sidebar
    ,sidebarBackColor = "rgb(52,62,72)"
    ,sidebarPadding = 0
    
    ,sidebarMenuBackColor = "transparent"
    ,sidebarMenuPadding = 0
    ,sidebarMenuBorderRadius = 0
    
    ,sidebarShadowRadius = ""
    ,sidebarShadowColor = "0px 0px 0px"
    
    ,sidebarUserTextColor = "rgb(205,205,205)"
    
    ,sidebarSearchBackColor = "rgb(45,55,65)"
    ,sidebarSearchIconColor = "rgb(153,153,153)"
    ,sidebarSearchBorderColor = "rgb(45,55,65)"
    
    ,sidebarTabTextColor = "rgb(205,205,205)"
    ,sidebarTabTextSize = 14
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = "rgb(70,80,90)"
    ,sidebarTabTextColorSelected = "rgb(255,255,255)"
    ,sidebarTabRadiusSelected = "5px"
    
    ,sidebarTabBackColorHover = "rgb(55,65,75)"
    ,sidebarTabTextColorHover = "rgb(255,255,255)"
    ,sidebarTabBorderStyleHover = "none"
    ,sidebarTabBorderColorHover = "none"
    ,sidebarTabBorderWidthHover = 0
    ,sidebarTabRadiusHover = "5px"
    
    ### boxes
    ,boxBackColor = "rgba(52,62,72,0)" # ,boxBackColor = "rgb(52,62,72)"
    ,boxBorderRadius = 5
    ,boxShadowSize = "0px 0px 0px"
    ,boxShadowColor = ""
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(52,62,72)"
    ,boxPrimaryColor = "rgb(200,200,200)"
    ,boxSuccessColor = "rgb(155,240,80)"
    ,boxWarningColor = "rgb(240,80,210)"
    ,boxDangerColor = "rgb(240,80,80)"
    
    ,tabBoxTabColor = "rgb(52,62,72)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(205,205,205)"
    ,tabBoxTabTextColorSelected = "rgb(205,205,205)"
    ,tabBoxBackColor = "rgb(52,62,72)"
    ,tabBoxHighlightColor = "rgb(70,80,90)"
    ,tabBoxBorderRadius = 5
    
    ### inputs
    ,buttonBackColor = "rgb(230,230,230)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(50,50,50)"
    ,buttonBorderRadius = 5
    
    ,buttonBackColorHover = "rgb(180,180,180)"
    ,buttonTextColorHover = "rgb(50,50,50)"
    ,buttonBorderColorHover = "rgb(50,50,50)"
    
    ,textboxBackColor = "rgb(68,80,90)"
    ,textboxBorderColor = "rgb(76,90,103)"
    ,textboxBorderRadius = 5
    ,textboxBackColorSelect = "rgb(80,90,100)"
    ,textboxBorderColorSelect = "rgb(255,255,255)"
    
    ### tables
    ,tableBackColor = "rgb(52,62,72)"
    ,tableBorderColor = "rgb(70,80,90)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)




# ---------------------
### ---- ORIGINAIS ----

### theme_blue_gradient ---------------------------------------------------
theme_blue_gradient <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial"
    ,appFontColor = "rgb(0,0,0)"
    ,bodyBackColor = "rgb(248,248,248)"
    
    ### header
    ,logoBackColor = "rgb(23,103,124)"
    
    ,headerButtonBackColor = "rgb(238,238,238)"
    ,headerButtonIconColor = "rgb(75,75,75)"
    ,headerButtonBackColorHover = "rgb(210,210,210)"
    ,headerButtonIconColorHover = "rgb(0,0,0)"
    
    ,headerBackColor = "rgb(238,238,238)"
    ,headerBoxShadowColor = "#aaaaaa"
    ,headerBoxShadowSize = "2px 2px 2px"
    
    ### sidebar
    ,sidebarBackColor = cssGradientThreeColors(
        direction = "down"
        ,colorStart = "rgb(20,97,117)"
        ,colorMiddle = "rgb(56,161,187)"
        ,colorEnd = "rgb(3,22,56)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarPadding = 0
    
    ,sidebarMenuBackColor = "transparent"
    ,sidebarMenuPadding = 0
    ,sidebarMenuBorderRadius = 0
    
    ,sidebarShadowRadius = "3px 5px 5px"
    ,sidebarShadowColor = "#aaaaaa"
    
    ,sidebarUserTextColor = "rgb(255,255,255)"
    
    ,sidebarSearchBackColor = "rgb(55,72,80)"
    ,sidebarSearchIconColor = "rgb(153,153,153)"
    ,sidebarSearchBorderColor = "rgb(55,72,80)"
    
    ,sidebarTabTextColor = "rgb(255,255,255)"
    ,sidebarTabTextSize = 13
    ,sidebarTabBorderStyle = "none none solid none"
    ,sidebarTabBorderColor = "rgb(35,106,135)"
    ,sidebarTabBorderWidth = 1
    
    ,sidebarTabBackColorSelected = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgba(44,222,235,1)"
        ,colorMiddle = "rgba(44,222,235,1)"
        ,colorEnd = "rgba(0,255,213,1)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorSelected = "rgb(0,0,0)"
    ,sidebarTabRadiusSelected = "0px 20px 20px 0px"
    
    ,sidebarTabBackColorHover = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgba(44,222,235,1)"
        ,colorMiddle = "rgba(44,222,235,1)"
        ,colorEnd = "rgba(0,255,213,1)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorHover = "rgb(50,50,50)"
    ,sidebarTabBorderStyleHover = "none none solid none"
    ,sidebarTabBorderColorHover = "rgb(75,126,151)"
    ,sidebarTabBorderWidthHover = 1
    ,sidebarTabRadiusHover = "0px 20px 20px 0px"
    
    ### boxes
    ,boxBackColor = "rgb(255,255,255)"
    ,boxBorderRadius = 5
    ,boxShadowSize = "0px 1px 1px"
    ,boxShadowColor = "rgba(0,0,0,.1)"
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(210,214,220)"
    ,boxPrimaryColor = "rgba(44,222,235,1)"
    ,boxSuccessColor = "rgba(0,255,213,1)"
    ,boxWarningColor = "rgb(244,156,104)"
    ,boxDangerColor = "rgb(255,88,55)"
    
    ,tabBoxTabColor = "rgb(255,255,255)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(0,0,0)"
    ,tabBoxTabTextColorSelected = "rgb(0,0,0)"
    ,tabBoxBackColor = "rgb(255,255,255)"
    ,tabBoxHighlightColor = "rgba(44,222,235,1)"
    ,tabBoxBorderRadius = 5
    
    ### inputs
    ,buttonBackColor = "rgb(245,245,245)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(200,200,200)"
    ,buttonBorderRadius = 5
    
    ,buttonBackColorHover = "rgb(235,235,235)"
    ,buttonTextColorHover = "rgb(100,100,100)"
    ,buttonBorderColorHover = "rgb(200,200,200)"
    
    ,textboxBackColor = "rgb(255,255,255)"
    ,textboxBorderColor = "rgb(200,200,200)"
    ,textboxBorderRadius = 5
    ,textboxBackColorSelect = "rgb(245,245,245)"
    ,textboxBorderColorSelect = "rgb(200,200,200)"
    
    ### tables
    ,tableBackColor = "rgb(255,255,255)"
    ,tableBorderColor = "rgb(240,240,240)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)

### theme_grey_dark ---------------------------------------------------
theme_grey_dark <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial"
    ,appFontColor = "rgb(205,205,205)"
    ,bodyBackColor = "rgb(45,55,65)"
    
    ### header
    ,logoBackColor = "rgb(70,80,90)"
    
    ,headerButtonBackColor = "rgb(70,80,90)"
    ,headerButtonIconColor = "rgb(25,35,45)"
    ,headerButtonBackColorHover = "rgb(40,50,60)"
    ,headerButtonIconColorHover = "rgb(0,0,0)"
    
    ,headerBackColor = "rgb(70,80,90)"
    ,headerBoxShadowColor = ""
    ,headerBoxShadowSize = "0px 0px 0px"
    
    ### sidebar
    ,sidebarBackColor = "rgb(52,62,72)"
    ,sidebarPadding = 0
    
    ,sidebarMenuBackColor = "transparent"
    ,sidebarMenuPadding = 0
    ,sidebarMenuBorderRadius = 0
    
    ,sidebarShadowRadius = ""
    ,sidebarShadowColor = "0px 0px 0px"
    
    ,sidebarUserTextColor = "rgb(205,205,205)"
    
    ,sidebarSearchBackColor = "rgb(45,55,65)"
    ,sidebarSearchIconColor = "rgb(153,153,153)"
    ,sidebarSearchBorderColor = "rgb(45,55,65)"
    
    ,sidebarTabTextColor = "rgb(205,205,205)"
    ,sidebarTabTextSize = 14
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = "rgb(70,80,90)"
    ,sidebarTabTextColorSelected = "rgb(255,255,255)"
    ,sidebarTabRadiusSelected = "5px"
    
    ,sidebarTabBackColorHover = "rgb(55,65,75)"
    ,sidebarTabTextColorHover = "rgb(255,255,255)"
    ,sidebarTabBorderStyleHover = "none"
    ,sidebarTabBorderColorHover = "none"
    ,sidebarTabBorderWidthHover = 0
    ,sidebarTabRadiusHover = "5px"
    
    ### boxes
    ,boxBackColor = "rgb(52,62,72)"
    ,boxBorderRadius = 5
    ,boxShadowSize = "0px 0px 0px"
    ,boxShadowColor = ""
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(52,62,72)"
    ,boxPrimaryColor = "rgb(200,200,200)"
    ,boxSuccessColor = "rgb(155,240,80)"
    ,boxWarningColor = "rgb(240,80,210)"
    ,boxDangerColor = "rgb(240,80,80)"
    
    ,tabBoxTabColor = "rgb(52,62,72)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(205,205,205)"
    ,tabBoxTabTextColorSelected = "rgb(205,205,205)"
    ,tabBoxBackColor = "rgb(52,62,72)"
    ,tabBoxHighlightColor = "rgb(70,80,90)"
    ,tabBoxBorderRadius = 5
    
    ### inputs
    ,buttonBackColor = "rgb(230,230,230)"
    ,buttonTextColor = "rgb(0,0,0)"
    ,buttonBorderColor = "rgb(50,50,50)"
    ,buttonBorderRadius = 5
    
    ,buttonBackColorHover = "rgb(180,180,180)"
    ,buttonTextColorHover = "rgb(50,50,50)"
    ,buttonBorderColorHover = "rgb(50,50,50)"
    
    ,textboxBackColor = "rgb(68,80,90)"
    ,textboxBorderColor = "rgb(76,90,103)"
    ,textboxBorderRadius = 5
    ,textboxBackColorSelect = "rgb(80,90,100)"
    ,textboxBorderColorSelect = "rgb(255,255,255)"
    
    ### tables
    ,tableBackColor = "rgb(52,62,72)"
    ,tableBorderColor = "rgb(70,80,90)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)

### theme_purple_gradient ---------------------------------------------------
theme_purple_gradient <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial"
    ,appFontColor = "rgb(128,177,221)"
    ,bodyBackColor = cssGradientThreeColors(
        direction = "down"
        ,colorStart = "rgb(49,56,107)"
        ,colorMiddle = "rgb(71,59,109)"
        ,colorEnd = "rgb(78,88,149)"
        ,colorStartPos = 0
        ,colorMiddlePos = 70
        ,colorEndPos = 100
    )
    
    ### header
    ,logoBackColor = "rgb(49,56,107)"
    
    ,headerButtonBackColor = "rgb(49,56,107)"
    ,headerButtonIconColor = "rgb(62,133,179)"
    ,headerButtonBackColorHover = "rgb(49,56,107)"
    ,headerButtonIconColorHover = "rgb(255,255,255)"
    
    ,headerBackColor = "rgb(49,56,107)"
    ,headerBoxShadowColor = ""
    ,headerBoxShadowSize = "0px 0px 0px"
    
    ### sidebar
    ,sidebarBackColor = cssGradientThreeColors(
        direction = "down"
        ,colorStart = "rgb(49,56,107)"
        ,colorMiddle = "rgb(71,59,109)"
        ,colorEnd = "rgb(78,88,149)"
        ,colorStartPos = 0
        ,colorMiddlePos = 70
        ,colorEndPos = 100
    )
    
    ,sidebarShadowRadius = ""
    ,sidebarPadding = 10
    ,sidebarShadowColor = "0px 0px 0px"
    
    ,sidebarMenuBackColor = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(48,103,157)"
        ,colorMiddle = "rgb(65,79,129)"
        ,colorEnd = "rgb(55,70,120)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,sidebarMenuPadding = 5
    ,sidebarMenuBorderRadius = 20
    
    ,sidebarUserTextColor = "rgb(128,177,221)"
    
    ,sidebarSearchBackColor = "rgb(40,70,115)"
    ,sidebarSearchIconColor = "rgb(50,115,145)"
    ,sidebarSearchBorderColor = "rgb(30,60,105)"
    
    ,sidebarTabTextColor = "rgb(128,177,221)"
    ,sidebarTabTextSize = 13
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorSelected = "rgb(255,255,255)"
    ,sidebarTabRadiusSelected = "30px"
    
    ,sidebarTabBackColorHover = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(56,137,189)"
        ,colorMiddle = "rgb(65,95,145)"
        ,colorEnd = "rgb(68,84,137)"
        ,colorStartPos = 0
        ,colorMiddlePos = 50
        ,colorEndPos = 100
    )
    ,sidebarTabTextColorHover = "rgb(255,255,255)"
    ,sidebarTabBorderStyleHover = "none"
    ,sidebarTabBorderColorHover = "none"
    ,sidebarTabBorderWidthHover = 0
    ,sidebarTabRadiusHover = "30px"
    
    ### boxes
    ,boxBackColor = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(70,75,125)"
        ,colorMiddle = "rgb(65,79,129)"
        ,colorEnd = "rgb(55,70,120)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,boxBorderRadius = 15
    ,boxShadowSize = "0px 0px 0px"
    ,boxShadowColor = ""
    ,boxTitleSize = 16
    ,boxDefaultColor = "rgb(49,56,107)"
    ,boxPrimaryColor = "rgb(141,192,241)"
    ,boxSuccessColor = "rgb(64,186,170)"
    ,boxWarningColor = "rgb(255,217,144)"
    ,boxDangerColor = "rgb(249,144,144)"
    
    ,tabBoxTabColor = "rgb(80,95,155)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(128,177,221)"
    ,tabBoxTabTextColorSelected = "rgb(255,255,255)"
    ,tabBoxBackColor = cssGradientThreeColors(
        direction = "right"
        ,colorStart = "rgb(70,75,125)"
        ,colorMiddle = "rgb(65,79,129)"
        ,colorEnd = "rgb(55,70,120)"
        ,colorStartPos = 0
        ,colorMiddlePos = 30
        ,colorEndPos = 100
    )
    ,tabBoxHighlightColor = "rgb(80,95,155)"
    ,tabBoxBorderRadius = 15
    
    ### inputs
    ,buttonBackColor = "rgb(72,190,229)"
    ,buttonTextColor = "rgb(40,63,106)"
    ,buttonBorderColor = "rgb(72,190,229)"
    ,buttonBorderRadius = 20
    
    ,buttonBackColorHover = "rgb(115,210,240)"
    ,buttonTextColorHover = "rgb(255,255,255)"
    ,buttonBorderColorHover = "rgb(115,210,240)"
    
    ,textboxBackColor = "rgb(40,70,115)"
    ,textboxBorderColor = "rgb(30,60,105)"
    ,textboxBorderRadius = 20
    ,textboxBackColorSelect = "rgb(40,70,115)"
    ,textboxBorderColorSelect = "rgb(30,60,105)"
    
    ### tables
    ,tableBackColor = "transparent"
    ,tableBorderColor = "rgb(80,95,155)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)


### theme_grey_light ----
theme_grey_light <- shinyDashboardThemeDIY(
    
    ### general
    appFontFamily = "Arial"
    ,appFontColor = "rgb(45,45,45)"
    ,bodyBackColor = "rgb(240,240,240)"
    
    ### header
    ,logoBackColor = "rgb(120,120,120)"
    
    ,headerButtonBackColor = "rgb(120,120,120)"
    ,headerButtonIconColor = "rgb(220,220,220)"
    ,headerButtonBackColorHover = "rgb(100,100,100)"
    ,headerButtonIconColorHover = "rgb(60,60,60)"
    
    ,headerBackColor = "rgb(120,120,120)"
    ,headerBoxShadowColor = "#dfdfdf"
    ,headerBoxShadowSize = "3px 5px 5px"
    
    ### sidebar
    ,sidebarBackColor = "rgb(255,255,255)"
    ,sidebarPadding = 0
    
    ,sidebarMenuBackColor = "transparent"
    ,sidebarMenuPadding = 0
    ,sidebarMenuBorderRadius = 0
    
    ,sidebarShadowRadius = "3px 5px 5px"
    ,sidebarShadowColor = "#dfdfdf"
    
    ,sidebarUserTextColor = "rgb(115,115,115)"
    
    ,sidebarSearchBackColor = "rgb(240,240,240)"
    ,sidebarSearchIconColor = "rgb(100,100,100)"
    ,sidebarSearchBorderColor = "rgb(220,220,220)"
    
    ,sidebarTabTextColor = "rgb(100,100,100)"
    ,sidebarTabTextSize = 14
    ,sidebarTabBorderStyle = "none"
    ,sidebarTabBorderColor = "none"
    ,sidebarTabBorderWidth = 0
    
    ,sidebarTabBackColorSelected = "rgb(230,230,230)"
    ,sidebarTabTextColorSelected = "rgb(0,0,0)"
    ,sidebarTabRadiusSelected = "0px"
    
    ,sidebarTabBackColorHover = "rgb(245,245,245)"
    ,sidebarTabTextColorHover = "rgb(0,0,0)"
    ,sidebarTabBorderStyleHover = "none solid none none"
    ,sidebarTabBorderColorHover = "rgb(200,200,200)"
    ,sidebarTabBorderWidthHover = 4
    ,sidebarTabRadiusHover = "0px"
    
    ,boxBackColor = "rgb(248,248,248)"
    ,boxBorderRadius = 5
    ,boxShadowSize = "none"
    ,boxShadowColor = ""
    ,boxTitleSize = 18
    ,boxDefaultColor = "rgb(225,225,225)"
    ,boxPrimaryColor = "rgb(95,155,213)"
    ,boxSuccessColor = "rgb(112,173,71)"
    ,boxWarningColor = "rgb(237,125,49)"
    ,boxDangerColor = "rgb(232,76,34)"
    
    ,tabBoxTabColor = "rgb(248,248,248)"
    ,tabBoxTabTextSize = 14
    ,tabBoxTabTextColor = "rgb(100,100,100)"
    ,tabBoxTabTextColorSelected = "rgb(45,45,45)"
    ,tabBoxBackColor = "rgb(248,248,248)"
    ,tabBoxHighlightColor = "rgb(200,200,200)"
    ,tabBoxBorderRadius = 5
    
    ### inputs
    ,buttonBackColor = "rgb(215,215,215)"
    ,buttonTextColor = "rgb(45,45,45)"
    ,buttonBorderColor = "rgb(150,150,150)"
    ,buttonBorderRadius = 5
    
    ,buttonBackColorHover = "rgb(190,190,190)"
    ,buttonTextColorHover = "rgb(0,0,0)"
    ,buttonBorderColorHover = "rgb(150,150,150)"
    
    ,textboxBackColor = "rgb(255,255,255)"
    ,textboxBorderColor = "rgb(118,118,118)"
    ,textboxBorderRadius = 5
    ,textboxBackColorSelect = "rgb(245,245,245)"
    ,textboxBorderColorSelect = "rgb(108,108,108)"
    
    ### tables
    ,tableBackColor = "rgb(248,248,248)"
    ,tableBorderColor = "rgb(238,238,238)"
    ,tableBorderTopSize = 1
    ,tableBorderRowSize = 1
    
)
