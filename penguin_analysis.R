# NEXT 2 LINES FROM AI --  Place this at the very top of your script
log_file <- file("script_output_log.txt", open = "wt")
sink(log_file, type = "output", split = TRUE)

setwd("~/Desktop/Fall 2026 Resources/QAC380/assignment2-PB/")
penguins <- read.csv("penguins.csv")

library(descr)

freq(penguins$island)
freq(penguins$sex)

my.lm <- lm(body_mass_g ~ bill_length_mm + flipper_length_mm + bill_depth_mm, data = penguins) 
summary(my.lm)

ggplot(data=penguins)+geom_point(aes(x=flipper_length_mm, y=body_mass_g))+geom_smooth(aes(x=flipper_length_mm, y=body_mass_g))

# NEXT 2 LINES FROM AI -- Place this at the very bottom to cleanly close the log
sink(type = "output")
sink(type = "message")
