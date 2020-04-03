# Library
library(tidygapminder)
library(dplyr)

# Create first table for demo
agri <- tidy_bunch(dirpath = "data/agri/", merge = TRUE)

agri_all <- agri %>% 
  rename(agri_val_added = `Agriculture, value added (% of GDP)`, land = `Agricultural land (% of land area)`, industry_val_added = `Industry, value added (% of GDP)`) %>%
  filter(country %in% c("Cote d'Ivoire", "Benin", "Ghana", "Nigeria", "Japan", "United States"))

agri <- agri %>% 
  rename(agri_val_added = `Agriculture, value added (% of GDP)`, land = `Agricultural land (% of land area)`, industry_val_added = `Industry, value added (% of GDP)`) %>%
  filter(country == "Cote d'Ivoire")

