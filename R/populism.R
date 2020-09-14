
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")
install.packages("rmarkdown")
install.packages("readxl")
install.packages("ggalt")
install.packages("janitor")

library(dplyr)
library(tidyr)
library(ggplot2)
library(rmarkdown)
library(readxl)
library(ggalt)
library(janitor)

# Importacao

caminho <- "data-raw/Populist speech data.xlsx"
pop_base <- read_excel(caminho)

pop_base <- pop_base %>%
  clean_names()

pop_br <- pop_base %>%
  filter(country == "Brazil")

# analise do grau de populismo dos presidentes do Brasil
# analise do grau de populismo dos presidentes da AL
# mapa populismo no mundo

ggplot(data = pop_br, aes(x = year_begin, y = average_score)) + geom_line()





