# http://jkunst.com/blog/posts/2019-02-04-using-tooltips-in-unexpected-ways/
# jbkunst highcharter setup -----------------------------------------------
library(highcharter)
options(
  highcharter.theme =
    hc_theme_smpl(
      chart = list(
        style = list(
          fontFamily = '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"'
        )
      ),
      title = list(style = list(fontFamily = "Roboto")),
      subtitle = list(style = list(fontFamily = "Roboto"))
    )
)

hc_opts <- getOption("highcharter.chart")
hc_opts$credits <- list(enabled = TRUE, text = "Coded by Joshua Kunst", href = "http://jkunst.com")
options(highcharter.chart = hc_opts)



# gapminder code ----------------------------------------------------------
library(tidyverse)
library(gapminder)
data(gapminder, package = "gapminder")

gp <- gapminder %>%
  arrange(desc(year)) %>%
  distinct(country, .keep_all = TRUE)

gp2 <- gapminder %>%
  select(country, year, pop) %>%
  nest(-country) %>%
  mutate(
    data = map(data, mutate_mapping, hcaes(x = year, y = pop), drop = TRUE),
    data = map(data, list_parse)
  ) %>%
  rename(ttdata = data)

gptot <- left_join(gp, gp2, by = "country")

hchart(
  gptot,
  "point",
  hcaes(lifeExp, gdpPercap, name = country, size = pop, group = continent)
) %>%
  hc_yAxis(type = "logarithmic") %>%
  # here is the magic (inside the function)
  hc_tooltip(useHTML = TRUE, pointFormatter = tooltip_chart(accesor = "ttdata"))
