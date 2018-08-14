## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
pkg_freq_table <- read_csv('data/add-on-packages-freqtable.csv')

## read that csv into a data frame, then ...

## if you use ggplot2, code like this will work:
pkg_freq_barchart <- ggplot(pkg_freq_table, aes(x = Built, y = n)) +
  geom_bar(stat = 'identity', fill = 'navy') +
  labs(x = 'R Build Version',
         y = "Count") +
  ggtitle("Package Count by R Version")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
ggsave("built-barchart.png", pkg_freq_barchart, path = "figs/")

## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
