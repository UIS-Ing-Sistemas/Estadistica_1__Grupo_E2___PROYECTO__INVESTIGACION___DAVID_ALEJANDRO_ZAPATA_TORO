library(readr)
library(dplyr)

##### TOTAL CONSUMIDORES DE COLOMBIA #####
encuestas_colombia_total <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/encuestas/encuestas.csv")

##### TOTAL CONSUMIDORES DE MARIHUANA COLOMBIA #####
k_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/k_capitulos/k_capitulos.csv")

df_consumidores_marihuana_colombia <- merge(encuestas_colombia_total, k_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_marihuana_colombia, "consumdores_marihuana_colombia.csv", row.names = FALSE)

##### TOTAL CONSUMIDORES DE BASUCO COLOMBIA #####
m_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/m_capitulos/m_capitulos.csv")

df_consumidores_basuco_colombia <- merge(encuestas_colombia_total, m_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_basuco_colombia, "consumidores_basuco_colombia.csv", row.names = FALSE)

##### TOTAL CONSUMIDORES DE COCAINA COLOMBIA #####
l_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/l_capitulos/l_capitulos.csv")

df_consumidores_cocaina_colombia <- merge(encuestas_colombia_total, l_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_cocaina_colombia, "consumidores_cocaina_colombia.csv", row.names = FALSE)

##### TOTAL CONSUMIDORES DE EXTASIS COLOMBIA #####
n_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/n_capitulos/n_capitulos.csv")

df_consumidores_extasis_colombia <- merge(encuestas_colombia_total, n_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_extasis_colombia, "consumidores_extasis_colombia.csv", row.names = FALSE)

##### TOTAL CONSUMIDORES DE HEROINA COLOMBIA #####
o_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/o_capitulos/o_capitulos.csv")

df_consumidores_heroina_colombia <- merge(encuestas_colombia_total, o_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_heroina_colombia, "consumidores_heroina_colombia.csv", row.names = FALSE)