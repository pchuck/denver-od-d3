#!/usr/local/bin/Rscript
#
if(!require(networkD3)) install.packages("networkD3", dep=T,
                                         repos='http://cran.us.r-project.org')
library(networkD3)

MEET <- "meeting|Meeting"
MEAL <- "meal|Meal|food|Food|coffee|Coffee|Dinner|dinner|lunch|Lunch"

campaign_expenditures <- read.csv("data/denver_campaign_expenditures.csv")

campaign_meetings <- campaign_expenditures[
    grepl(paste(MEET, MEAL, sep="|"), campaign_expenditures$Purpose), ]
campaign_meeting_payees <-
    data.frame(campaign_meetings$Campaign.Name, campaign_meetings$Payee.Name)

campaign_meeting_tree_graph <- simpleNetwork(campaign_meeting_payees)

# save to disk
saveNetwork(campaign_meeting_tree_graph,
            "denver_campaign_meeting_tree_graph.html",
            selfcontained=TRUE)

# render (when in interactive mode)
#campaign_meeting_tree_graph
