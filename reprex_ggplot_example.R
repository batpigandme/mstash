# source: https://community.rstudio.com/t/ggplot2-can-i-send-arguments-in-a-formatter-function/16939

library(ggplot2)
library(scales)

set.seed(12)

#Create a dataset with 3-digits precision:
df <- dplyr::data_frame(xvar = LETTERS[1:5],yvar = round(runif(5, min = 0, max = 0.080), 3))
df$xvar <- as.factor(df$xvar)

# The diagram shows percent with 2 decimals, but it should only be 1
ggplot(df, aes(xvar, yvar)) +
  geom_bar(stat = "identity") +
  scale_y_continuous(breaks = pretty_breaks(8), labels = percent)

# If a try to send an accuracy argument to scales:percent from ggplot it generates an error
ggplot(df, aes(xvar, yvar)) +
  geom_bar(stat = "identity") +
  scale_y_continuous(breaks = pretty_breaks(8), labels = percent(accuracy = 0.1))


# My revision…
ggplot(df, aes(xvar, yvar)) +
  geom_bar(stat = "identity") +
  scale_y_continuous(breaks = pretty_breaks(8), labels = percent_format(accuracy = 0.1))
