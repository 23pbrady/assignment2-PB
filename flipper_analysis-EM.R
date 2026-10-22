#penguin analysis graph
penguins <- read.csv("penguins.csv")

aggregate(flipper_length_mm ~ species,
          data = penguins, FUN = mean)