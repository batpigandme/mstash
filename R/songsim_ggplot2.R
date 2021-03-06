## Decoding lyrics — @pprevos
## https://github.com/pprevos/r.prevos.net/blob/master/Miscellaneous/lyrics.R

library(tidyverse)
library(tidytext)
library(reshape2)
library(rvest)

get_lyrics <- function(artist, song) {
  artist <- gsub("[^A-Za-z0-9]+", "", tolower(artist))
  song <- gsub("[^A-Za-z0-9]+", "", tolower(song))
  artist <- gsub("^the", "", artist)
  url = paste("http://azlyrics.com/lyrics/",
              artist, "/", song, ".html", sep = "")
  print(url)

  azlyrics <- read_html(url)
  lyrics <- html_nodes(azlyrics, "div")
  lyrics <- html_text(lyrics[22])
  gsub("\r|\n", " ", lyrics)
}

plot_snowflake <- function(artist, song, col1 = "white", col2 = "dodgerblue4"){
  lyrics <- get_lyrics(artist, song)
  lyrics <- data_frame(line = lyrics) %>%
    filter(line != "")

  words <- lyrics  %>%
    unnest_tokens(word, line)
  words_matrix <- lapply(1:nrow(words),
                         function(w){
                           as.character(words[w, 1]) == words
                         }
  ) %>%
    do.call(cbind, .)
  rownames(words_matrix) <- 1:nrow(words)
  colnames(words_matrix) <- 1:nrow(words)

  melt(words_matrix, varnames = c("x",  "y")) %>%
    ggplot(aes(x, -y, fill = value)) +
    geom_raster() +
    scale_fill_manual(values = c(col1, col2), guide = FALSE) +
    hrbrthemes::theme_ipsum_rc() +
    labs(title = song,
         subtitle = artist,
         caption = "songsim implementation in ggplot2",
         x = "",
         y = ""
         )
}


# Lizzo -------------------------------------------------------------------
# colour source: https://buy.gaytimes.co.uk/products/gay-times-august-2018-lizzo
plot_snowflake("Lizzo", "Good As Hell", col1 = "#FFF200", col2 = "#030303")

ggsave("goodashell.png", path = "~/mstash/images/songsim/", width = 7, height = 7)

# colour source: https://www.videostatic.com/sites/default/files/styles/post/public/lizzo_juice.jpg?itok=zldtIRK4
plot_snowflake("Lizzo", "Juice", col1 = "#B1229C", col2 = "#20102C")

ggsave("juice.png", path = "~/mstash/images/songsim/", width = 7, height = 7)

# colour source: https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/LizzoBoys2018Single.jpg/220px-LizzoBoys2018Single.jpg
plot_snowflake("Lizzo", "Boys", col1 = "#FFFFFF", col2 = "#D303AA")

ggsave("boys.png", path = "~/mstash/images/songsim/", width = 7, height = 7)

# colour source: https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00Qmh-p7KxE8FwbwxI7nRs0TF5GMGVNav85-AB09HL0WlgM15
plot_snowflake("Lizzo", "Water Me", col1 = "#FFFFFF", col2 = "#C21921")

ggsave("waterme.png", path = "~/mstash/images/songsim/", width = 7, height = 7)

# examples ----------------------------------------------------------------
library(gridExtra)
png("DaftPunk-Queen.png", width = 1024, height = 768)
l1 <- plot_snowflake("Daft Punk", "Around the world")
l2 <- plot_snowflake("Queen", "Bohemian Rhapsody")
grid.arrange(l1, l2, ncol = 2)
dev.off()
getwd()
