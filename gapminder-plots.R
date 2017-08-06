download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv")
gapminder <- read.csv ("data/gapminder-FiveYears.csv")

library(ggplot2)
ggplot(gapminder_FiveYearData, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

gapminder <- gapminder_FiveYearData

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color=continent))

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color=continent)) +
  stat_smooth(method=lm)

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color=continent)) +
  scale_x_log10() +
  stat_smooth(method=lm)

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color=continent)) +
  scale_x_log10() +
  stat_smooth(method=lm, color = "red")
