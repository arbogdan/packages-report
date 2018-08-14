## create a data frame from data/installed-packages.csv
## with, e.g., readr::read_csv() or read.csv()
df <- read_csv('data/installed-packages.csv')


## filter out packages in the default library
## keep variables Package and Built
## if you use dplyr, code like this will work:
non_default_pkg <- df %>%
  filter(Priority != 'base') %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
write_csv(non_default_pkg, "data/add-on-packages.csv")

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
pkg_freq_table <- df %>%
  count(Built) %>%
  mutate(Proportion = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
write_csv(pkg_freq_table, "data/add-on-packages-freqtable.csv")

## when this script works, stage & commit it and the csv files
## PUSH!
