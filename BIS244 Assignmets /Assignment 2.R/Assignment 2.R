load(us_states)

 df <- us_states <- read_csv("Documents/GIT Repost/BIS244DassoRafael /BIS-244-DassoRafael/covid-19-data/us-states.csv")
 show_col_types = FALSE
 View(df)
 USStates <- as.data.frame(df)
 View(USStates)
 

DFPA <- USStates[USStates$state == "Pennsylvania", ]
View(DFPA)

summary(USStates)

install.packages("dplyr")
library(dplyr)

changesDF <- DFPA %>% mutate(incr_cases = cases-lead(cases),
                             incr_deaths = deaths - lead(deaths))
View(changesDF)

DFCases <- mutate(incr_cases(DEPA == "cases"))
DFDeaths <- mutate(incr_deaths(DEPA == "deaths"))

sd(DFCases,na.rm = TRUE)


















