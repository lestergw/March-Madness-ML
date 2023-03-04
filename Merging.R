# Load packages
pacman::p_load(tidyverse, magrittr, DataExplorer)

# View a sample submission csv
sample_submission = read.csv("SampleSubmission2023.csv")
head(sample_submission)
nrow(sample_submission)

# Load necessary data frames
# 2
m_con_tourney_games = read.csv("MConferenceTourneyGames.csv")
m_tourney_compact = read.csv("MNCAATourneyCompactResults.csv")
m_tourney_detailed = read.csv("MNCAATourneyDetailedResults.csv")
m_reg_compact = read.csv("MRegularSeasonCompactResults.csv")
m_reg_detailed = read.csv("MRegularSeasonDetailedResults.csv")
m_sec_compact = read.csv("MSecondaryTourneyCompactResults.csv")

# 1
m_massey_ordinals = read.csv("MMasseyOrdinals.csv")
m_tourney_seed_slots = read.csv("MNCAATourneySeedRoundSlots.csv")
m_tourney_seeds = read.csv("MNCAATourneySeeds.csv")
m_tourney_slots = read.csv("MNCAATourneySlots.csv")
m_teams = read.csv("MTeams.csv")

# Mess around with the data
"2023_miami_OSU" 

m_con_tourney_games$GameID = paste0(m_con_tourney_games$Season,
                                   m_con_tourney_games$WTeamID,
                                   m_con_tourney_games$LTeamID)

m_reg_compact$GameID = paste0(m_reg_compact$Season,
                              m_reg_compact$WTeamID,
                              m_reg_compact$LTeamID)

m_reg_detailed$GameID = paste0(m_reg_detailed$Season,
                               m_reg_detailed$WTeamID,
                               m_reg_detailed$LTeamID)

m_sec_compact$GameID = paste0(m_sec_compact$Season,
                              m_sec_compact$WTeamID,
                              m_sec_compact$LTeamID)

m_tourney_compact$GameID = paste0(m_tourney_compact$Season,
                                  m_tourney_compact$WTeamID,
                                  m_tourney_compact$LTeamID)

m_tourney_detailed$GameID = paste0(m_tourney_detailed$Season,
                                   m_tourney_detailed$WTeamID,
                                   m_tourney_detailed$LTeamID)

games = merge(m_reg_compact, m_reg_detailed, c(m_reg_compact$GameID,
                                               m_reg_detailed$GameID))





m_con_tourney_games %<>%
  mutate(lower = pmin(WTeamID, LTeamID)) %>% 
  mutate(higher = pmax(WTeamID, LTeamID))



# Build the game identifier in each table
# YYYY_XXXX_ZZZZ
# Where Y is the year, X is the lower team ID, Z is the higher team ID
# 2023_0110_0120 is the probability that team 0110 will beat team 0120 in 2023

