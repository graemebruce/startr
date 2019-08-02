############################################################
# This file handles the primary analysis using the tidied
# data as input. Should never read from `dir_data_raw`,
# only `dir_data_processed`.
#
#
############################################################

sample <- read_csv(here::here(dir_data_processed, 'sample.csv'))
