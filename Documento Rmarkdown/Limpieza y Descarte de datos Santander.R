library(dplyr)
library(readr)

encuestas <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/encuestas/encuestas.csv", 
                      col_types = cols(Depmuni = col_number(), 
                                       TIPO = col_number(), SERVICIO = col_number(), 
                                       ESTRATO = col_number(), TOTAL_PERSONAS = col_number(), 
                                       DIRECTORIO = col_number(), SECUENCIA_ENCUESTA = col_number(), 
                                       SECUENCIA_P = col_number(), ORDEN = col_number(), 
                                       RECO_DIC = col_number()))


##FILTRAR DATOS DE SOLO SANTANDER
df_santander <- encuestas %>%
  filter(startsWith(as.character(encuestas$Depmuni), "68"))

write.csv(df_santander, "encuestados_santander.csv", row.names = FALSE)

############### CONSUMIDORES DE MARIHUANA EN COLOMBIA ####################
k_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/k_capitulos/k_capitulos.csv")

## CONSUMIDORES DE MARIHUANA EN SANTANDER
df_consumidores_marihuana <- merge(df_santander, k_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_marihuana, "consumidores_marihuana_santander.csv", row.names = FALSE)

############## CONSUMIDORES DE BASUCO EN COLOMBIA #######################
m_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/m_capitulos/m_capitulos.csv")

## CONSUMIDORES DE BASUCO EN SANTANDER
df_consumidores_basuco <- merge(df_santander, m_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_basuco, "consumidores_basuco_santander.csv", row.names = FALSE)

############## CONSUMIDORES DE HEROINA EN COLOMBIA #######################
o_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/o_capitulos/o_capitulos.csv")

## CONSUMIDORES DE HEROINA EN SANTANDER 
df_consumidores_heroina <- merge(df_santander, o_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_heroina, "consumidores_heroina_santander.csv", row.names = FALSE)

############## CONSUMIDORES DE COCAINA EN COLOMBIA #######################
l_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/l_capitulos/l_capitulos.csv")

## CONSUMIDORES DE COCAINA EN SANTANDER
df_consumidores_cocaina <- merge(df_santander, l_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_cocaina, "consumidores_cocaina_santander.csv", row.names = FALSE)

############## CONSUMIDORES DE COCAINA EN COLOMBIA #######################
n_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/n_capitulos/n_capitulos.csv")

## CONSUMIDORES DE EXTASIS EN SANTANDER
df_consumidores_extasis <- merge(df_santander, n_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_extasis, "consumidores_extasis_santander.csv", row.names = FALSE)

############## CONSUMIDORES DE OTRAS SUSTANCIAS EN COLOMBIA #######################
p_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/p_capitulos/p_capitulos.csv")

## CONSUMIDORES DE OTRAS SUSTANCIAS EN SANTANDER 
df_consumidores_otras_sustancias <- merge(df_santander, n_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_extasis, "consumidores_otras_santander.csv", row.names = FALSE)