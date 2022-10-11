attach(EWEB_Pm)
library(dplyr)

table(EWEB_Pm['DATE'])

## returns total count of captures by session for PM in E WEB only
EWEB_Pm %>% 
  group_by(SESSION) %>%
  summarise(count=n())

## returns total no. unique tags per session
EWEB_Pm %>% 
  group_by(SESSION) %>%
  summarise(count=length(unique(TAG)))

EWebPmTagCountSession <-EWEB_Pm %>% 
  group_by(SESSION) %>%
  summarise(count=length(unique(TAG)))

## add column: of these individuals, how many were positive (length maybe? or df?)

## visualize captures over time
plot.ts(EWebPmTagCountSession$count)

## return total captures per unique session
table(EWEB_Pm$SESSION)

## total number of sessions: 43
PmSessionCountE <- c(EWEB_Pm$SESSION)
PmSessionCountE_uniq <- unique(PmSessionCountE)
length(PmSessionCountE_uniq)

## divide into segments? Lubridate? to chart captures over time (session proxy)


## SNV positivity
PmSNVE <- c(EWEB_Pm$SNV_POS)
table(PmSNVE)    ## get counts of each type ## -9 is N/A

plot.ts(PmSNVE)
## what tha fuak?
## going forward -- plot as data frame, plot time v infection?
## prevalence over time 

