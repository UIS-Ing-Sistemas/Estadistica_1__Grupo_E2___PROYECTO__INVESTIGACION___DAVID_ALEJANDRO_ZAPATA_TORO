library(ggplot2)
library(dplyr)
library(readr)

marihuana <- nrow(X4_consumidores_marihuana_santander)
basuco <- nrow(X2_consumidores_basuco_santander)
heroina <- nrow(X3_consumidores_heroina_santander)
extasis <- nrow(X6_consumidores_extasis_santander)
cocaina <- nrow(X5_consumidores_cocaina_santander)
otras <- nrow(X7_consumidores_otras_santander)

valores_totales <- data.frame(
  data_frame = c("marihuana", "basuco", "heroina", "extasis", "cocaina", "otras"),
  values = c(marihuana, basuco, heroina, extasis, cocaina, otras)
)
View(valores_totales)

#######HISTOGRAMA#######
ggplot(valores_totales, aes(x = reorder(data_frame, -values), y = values)) +
  geom_col(fill = "skyblue", color = "black") +  # Barras rellenas con borde negro
  labs(
    title = "Consumo por sustancia",
    x = "Sustancia",
    y = "Cantidad de consumidores"
  ) +
  theme_minimala()
