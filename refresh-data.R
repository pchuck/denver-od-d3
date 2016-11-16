## script to refresh from source and segment local copy of Denver campaign data
CAMPAIGN_URL <- "http://data.denvergov.org/download/gis/campaign_finance_reports/csv/expenditures.csv"
CAMPAIGN_LOCAL <- "data/denver_campaign_expenditures.csv"
download.file(url=CAMPAIGN_URL, destfile=CAMPAIGN_LOCAL, method='wget')

