library(tidyverse)

tail <- read_csv('data/tail_length.csv')
head(tail)
dim(tail)

# join_function(data frame a, data frame b, how to join)

surveys <- read_csv('data/portal_data_joined.csv')

# inner_join(data frame a, data frame b, common id)
# inner_join only keeps records that are in both data frames
dim(inner_join(x = surveys,y = tail,by = 'record_id'))
dim(surveys)
dim(tail)

# left_join
# left_join takes dataframe x and dataframe y and it keeps everything in x and only matches in y
#left_join(x, y) == right_join(y, x)
# right_join takes dataframe x and dataframe y and it keeps everything in y and only matches in x
#right_join(x, y) == left_join(y, x)

surveys_left_joined <- left_join(x = surveys, y = tail, by = 'record_id')
surveys_right_joined <- right_join(y = surveys, x = tail, by = 'record_id')

dim(surveys_left_joined)
dim(surveys_right_joined)


# full_join(x,y)
# full_join keeps EVERYTHING
surveys_full_joined <- full_join( x = surveys, y = tail)
dim(surveys_full_joined)

# pivot_wider makes data with more columns
pivot_wider()

# pivot_longer makes data with more rows
pivot_longer

surveys_mz <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(genus, plot_id) %>% 
  summarize(mean_weight = mean(weight)) 

surveys_mz
unique(surveys_mz$genus)

wide_survey <- surveys_mz %>%
  pivot_wider(names_from = 'plot_id',values_from = 'mean_weight')

surveys_long <- wide_survey %>% pivot_longer(-genus, names_to = 'plot_id', values_to = 'mean_weight')

head(surveys_long)

wide_survey %>% pivot_longer(-genus, names_to = 'plot_id')


wide_survey %>% pivot_longer(-genus, names_to = 'plot_id',values_to = 'mean_weight')




