## deja vu from yesterday!

## create a data frame of your installed packages
library(tidyverse)
library(fs)

df <- installed.packages() %>%
  as_tibble()

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

df <- df %>%
  select(Package, LibPath, Version, Priority, Built)

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like
write.csv(df, 'data/installed-packages.csv')


## when this script works, stage & commit it and the csv file
## PUSH!
