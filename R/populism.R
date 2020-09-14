# Pacotes

install.packages("dplyr")
install.packages("ggplot2")
install.packages("readxl")
install.packages("janitor")

library(dplyr)
library(ggplot2)
library(readxl)
library(janitor)

# Importacao

caminho <- "data-raw/Populist speech data.xlsx"

pop_br <- read_excel(caminho) %>%
  filter(country == "Brazil") %>%
  clean_names()


# analise do grau de populismo dos presidentes do Brasil
# analise do grau de populismo dos presidentes da AL
# mapa populismo no mundo

# Grafico de barra "Populismo no Brasil"

ggplot(data = pop_br, aes(
  x = year_begin,
  y = average_score,
  fill = speech_category)) +
  geom_col() +
  labs(x = "Presidentes",
       y = "Grau de populismo",
       title = "Populismo no Brasil (1999 - 2019)",
       fill = "") +
  scale_x_continuous(breaks = seq(1999, 2020, by = 4),
                     labels = pop_br$leader) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    plot.title = element_text(hjust = 0.5, size = 12))


# Grafico de linha pop no br

ggplot(data = pop_br, aes(
  x = year_begin,
  y = average_score)) +
  geom_line() +
  labs(x = "Presidentes",
       y = "Grau de populismo",
       title = "Populismo no Brasil (1999 - 2019)",
       fill = "") +
  scale_x_continuous(breaks = seq(1999, 2020, by = 4),
                     labels = pop_br$leader) +
  theme_minimal() +
  theme(
    legend.position = "bottom",plot.title = element_text(hjust = 0.5, size = 12))



# Grafico "Populismo e Ideologia"

  ggplot(data = pop_br, aes(
    x = year_begin,
    y = average_score,
    fill = ideol_category)) +
    geom_col() +
    labs(x = "Presidentes",
         y = "Grau de populismo",
         title = "Populismo e ideologia no Brasil (1999 - 2019)",
         fill = "Ideologia") +
    scale_x_continuous(breaks = seq(1999, 2020, by = 4),
                       labels = pop_br$leader) +
    theme_minimal() +
    theme(legend.position = "bottom",
          plot.title = element_text(hjust = 0.5, size = 12))







