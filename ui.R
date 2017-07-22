d3 <- as.data.frame(read.csv("2016ba.csv", header=T, sep=",")) 

pageWithSidebar(
  headerPanel('香蕉產銷關係分群分析'),
  sidebarPanel(
    
    selectInput('xcol', 'X Variable', names(d3),
                selected=names(d3)[[3]]),
    selectInput('ycol', 'Y Variable', names(d3),
                selected=names(d3)[[4]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
