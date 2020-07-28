# Live coding!
library(gapminder)
library(dplyr)
library(ggplot2)
library(trelliscopejs)

gapminder <- gapminder %>%
  group_by(country) %>%
  mutate(relative_pop = pop / max(pop))

ggplot(gapminder, aes(year, relative_pop)) +
  geom_line() +
  facet_trelliscope(
    vars(country),
    name = "Gapminder",
    desc = "Relative population vs. year",
    nrow = 5,
    ncol = 4,
    width = 750
  )

# -------------------------------------------------------------------------

ggplot(gapminder, aes(year, pop)) +
  geom_line() +
  facet_trelliscope(
    vars(country),
    name = "Gapminder",
    desc = "Population vs. year",
    nrow = 5,
    ncol = 1,
    width = 750,
    scales = c("same", "free"),
    as_plotly = TRUE
  )

