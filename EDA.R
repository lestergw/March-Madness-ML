# Load packages
pacman::p_load(tidyverse, magrittr, DataExplorer)

# View a sample submission csv
sample_submission = read.csv("SampleSubmission2023.csv")
head(sample_submission)
nrow(sample_submission)


#----------------------------------------------------------------
#------------------------- EDA ----------------------------------
#----------------------------------------------------------------


# Cities
cities = read.csv("Cities.csv")
introduce(cities)
head(cities, 6)

# Conferences
conferences = read.csv("Conferences.csv")
introduce(conferences)
head(conferences, 6)
