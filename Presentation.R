library(tidyverse)

data <- read.csv("MSDS_survey.csv")

data$CPU.Cycle.Rate..in.GHz. <- as.numeric(data$CPU.Cycle.Rate..in.GHz.)

ggplot(data, aes(x=RAM..in.GB.)) +
  geom_histogram(fill="Red", color="black") +
  labs(x="RAM", y="Count", title="Distribution of RAM Storage") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

  