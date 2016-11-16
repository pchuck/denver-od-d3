#!/usr/local/bin/Rscript
#
library(networkD3)

campaign_expenditures <- read.csv("data/denver_campaign_expenditures.csv")
campaign_meetings <- campaign_expenditures[grepl("meeting|Meeting|meal|Meal|food|Food|coffee|Coffee|Dinner|dinner|lunch|Lunch", campaign_expenditures$Purpose), ]
campaign_meeting_payees <- data.frame(campaign_meetings$Campaign.Name, campaign_meetings$Payee.Name)
campaign_meeting_tree_graph <- simpleNetwork(campaign_meeting_payees)
saveNetwork(campaign_meeting_tree_graph,
            "denver_campaign_meeting_tree_graph.html",
            selfcontained=TRUE)

