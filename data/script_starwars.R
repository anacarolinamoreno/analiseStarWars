

library(dplyr)
library(ggplot2)

source("R/tema_starwars.R")

df_starwars <- starwars %>%
  mutate(
    contagem = case_when(
      is.na(species) ~ 1,
      T ~ 1
    )
  )

df_analise <- df_starwars %>%
  filter(!is.na(sex) & !is.na(species)) %>%
  group_by(sex, species) %>%
    summarise(
      contagem = sum(contagem)
    ) %>%
  select(sex, species, contagem)


grafico <- df_analise %>%
  ggplot(aes(
    x = sex,
    y = species,
    fill = contagem)
  ) +
  geom_point() +
  labs(
    x = "sexo",
    y = "espécie",
    title = "Igualdade de gênero das espécies de Star Wars"
  ) +
  tema_starwars()

grafico

