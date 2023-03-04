# Load packages
pacman::p_load(tidyverse, magrittr, DataExplorer)

# View a sample submission csv
sample_submission = read.csv("SampleSubmission2023.csv")
head(sample_submission)
nrow(sample_submission)


#----------------------------------------------------------------
#------------------------- EDA ----------------------------------
#----------------------------------------------------------------

#------------------------- Men ----------------------------------

# Cities (0)
cities = read.csv("Cities.csv")
introduce(cities)
head(cities, 6)

# Conferences (0)
conferences = read.csv("Conferences.csv")
introduce(conferences)
head(conferences, 6)

# Men Conference Tourney Games (2)
m_con_tourney_games = read.csv("MConferenceTourneyGames.csv")
introduce(m_con_tourney_games)
head(m_con_tourney_games, 6)

# Men Game Cities (0)
m_game_cities = read.csv("MGameCities.csv")
introduce(m_game_cities)
head(m_game_cities, 6)

# Men Massey Ordinals (1)
m_massey_ordinals = read.csv("MMasseyOrdinals.csv")
introduce(m_massey_ordinals)
head(m_massey_ordinals, 6)

# Men Tourney Compact Results (2)
m_tourney_compact = read.csv("MNCAATourneyCompactResults.csv")
introduce(m_tourney_compact)
head(m_tourney_compact, 6)

# Men Tourney Detailed Results (2)
m_tourney_detailed = read.csv("MNCAATourneyDetailedResults.csv")
introduce(m_tourney_detailed)
head(m_tourney_detailed, 6)

# Men Tourney Seed Round Slots (1)
m_tourney_seed_slots = read.csv("MNCAATourneySeedRoundSlots.csv")
introduce(m_tourney_seed_slots)
head(m_tourney_seed_slots, 6)

# Men Tourney Seeds (1)
m_tourney_seeds = read.csv("MNCAATourneySeeds.csv")
introduce(m_tourney_seeds)
head(m_tourney_seeds, 6)

# Men Tourney Slots (1)
m_tourney_slots = read.csv("MNCAATourneySlots.csv")
introduce(m_tourney_slots)
head(m_tourney_slots, 6)

# Men Reg. Season Compact Results (2)
m_reg_compact = read.csv("MRegularSeasonCompactResults.csv")
introduce(m_reg_compact)
head(m_reg_compact, 6)

# Men Reg. Season Detailed Results (2)
m_reg_detailed = read.csv("MRegularSeasonDetailedResults.csv")
introduce(m_reg_detailed)
head(m_reg_detailed, 6)

# Men Seasons (0)
m_seasons = read.csv("MSeasons.csv")
introduce(m_seasons)
head(m_seasons, 6)

# Men Secondary Tourney Compact Results (2)
m_sec_compact = read.csv("MSecondaryTourneyCompactResults.csv")
introduce(m_sec_compact)
head(m_sec_compact, 6)

# Men Secondary Tourney Teams (0)
m_sec_teams = read.csv("MSecondaryTourneyTeams.csv")
introduce(m_sec_teams)
head(m_sec_teams, 6)

# Men Coaches (0)
m_coaches = read.csv("MTeamCoaches.csv")
introduce(m_coaches)
head(m_coaches, 6)

# Men Conferences (0)
m_conferences = read.csv("MTeamConferences.csv")
introduce(m_conferences)
head(m_conferences, 6)

# Men Teams (1)
m_teams = read.csv("MTeams.csv")
introduce(m_teams)
head(m_teams, 6)

# Men Team Spellings (0)
m_team_spell = read.csv("MTeamSpellings.csv")
introduce(m_team_spell)
head(m_team_spell, 6)

