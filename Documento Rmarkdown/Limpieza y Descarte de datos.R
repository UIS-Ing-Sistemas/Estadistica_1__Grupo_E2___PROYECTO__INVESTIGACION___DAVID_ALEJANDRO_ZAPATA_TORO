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

print(df_santander)

############### CONSUMIDORES DE MARIHUANA EN COLOMBIA ####################
k_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/k_capitulos/k_capitulos.csv")

## CONSUMIDORES DE MARIHUANA EN SANTANDER
df_consumidores_marihuana <- merge(df_santander, k_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_marihuana, "consumidores_marihuana_santander.csv", row.names = FALSE)

print(df_consumidores_marihuana)

############## CONSUMIDORES DE TABACO EN COLOMBIA #######################
e_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/e_capitulos/e_capitulos.csv")

## CONSUMIDORES DE TABACO EN SANTANDER
df_consumidores_tabaco <- merge(df_santander, e_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_tabaco, "consumidores_tabaco_santander.csv", row.names = FALSE)

print(df_consumidores_tabaco)

############## CONSUMIDORES DE ALCOHOL EN COLOMBIA #######################
f_capitulos <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/f_capitulos/f_capitulos.csv")

## CONSUMIDORES DE ALCOHOL EN SANTANDER 
df_consumidores_alcohol <- merge(df_santander, f_capitulos, by = "DIRECTORIO", all = FALSE)

write.csv(df_consumidores_alcohol, "consumidores_alcohol_santander.csv", row.names = FALSE)

print(df_consumidores_alcohol)