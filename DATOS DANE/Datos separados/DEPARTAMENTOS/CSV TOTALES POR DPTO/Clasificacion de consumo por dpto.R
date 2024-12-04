library(readr)
library(dplyr)

#### CONSUMIDORES COLOMBIA ####
consumidores_total_colombia <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Colombia/consumidores_total_colombia.csv")

 consumidores_total_colombia <- select(consumidores_total_colombia, -SECUENCIA_ENCUESTA, -SECUENCIA_P, -ORDEN, -ESTADO_ENCUESTA, -RECO_DIC)

consumdores_marihuana_colombia <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Colombia/consumdores_marihuana_colombia.csv")

consumdores_marihuana_colombia <- select(consumdores_marihuana_colombia, -SECUENCIA_ENCUESTA.y, -SECUENCIA_P.y)
consumdores_marihuana_colombia <- consumdores_marihuana_colombia %>%
  select(where(~ !all(is.na(.))))

consumidores_basuco_colombia <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Colombia/consumidores_basuco_colombia.csv")

consumidores_basuco_colombia <- select(consumidores_basuco_colombia, -SECUENCIA_ENCUESTA.x, -SECUENCIA_P.x, -ORDEN.x,-SECUENCIA_ENCUESTA.y, -SECUENCIA_P.y, -ORDEN.y, -RECO_DIC)
consumidores_basuco_colombia <- consumidores_basuco_colombia %>%
  select(where(~ !all(is.na(.))))

consumidores_cocaina_colombia <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Colombia/consumidores_cocaina_colombia.csv")

consumidores_cocaina_colombia <- select(consumidores_cocaina_colombia, -SECUENCIA_ENCUESTA.x, -SECUENCIA_P.x, -ORDEN.x, -SECUENCIA_ENCUESTA.y, -SECUENCIA_P.y, -ORDEN.y, -RECO_DIC)
consumidores_cocaina_colombia <- consumidores_cocaina_colombia %>%
  select(where(~ !all(is.na(.))))

consumidores_extasis_colombia <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Colombia/consumidores_extasis_colombia.csv")

consumidores_extasis_colombia <- select(consumidores_extasis_colombia, -SECUENCIA_ENCUESTA.x, -SECUENCIA_P.x, -ORDEN.x, -SECUENCIA_ENCUESTA.y, -SECUENCIA_P.y, -ORDEN.y, -ESTADO_ENCUESTA, -RECO_DIC)
consumidores_extasis_colombia <- consumidores_extasis_colombia %>%
  select(where(~ !all(is.na(.))))

consumidores_heroina_colombia <- read_csv("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Colombia/consumidores_heroina_colombia.csv")

consumidores_heroina_colombia <- select(consumidores_heroina_colombia, -SECUENCIA_ENCUESTA.x, -SECUENCIA_P.x, -ORDEN.x, -SECUENCIA_ENCUESTA.y, -SECUENCIA_P.y, -ORDEN.y, -ESTADO_ENCUESTA, -RECO_DIC)
consumidores_heroina_colombia <- consumidores_heroina_colombia %>%
  select(where(~ !all(is.na(.))))

#### CLASIFICACIÓN CONSUMIDORES POR DPTO ####

#### HUILA ####
consumidores_huila <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "41"))

write.csv(consumidores_huila, "consumidores_huila.csv", row.names = FALSE)

consumidores_marihuna_huila <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "41"))

write.csv(consumidores_marihuna_huila, "consumidores_marihuna_huila.csv", row.names = FALSE)

consumidores_basuco_huila <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "41"))

write.csv(consumidores_basuco_huila, "consumidores_basuco_huila.csv", row.names = FALSE)

consumidores_cocaina_huila <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "41"))

write.csv(consumidores_cocaina_huila, "consumidores_cocaina_huila.csv", row.names = FALSE)

consumidores_cocaina_huila <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "41"))

write.csv(consumidores_cocaina_huila, "consumidores_cocaina_huila.csv", row.names = FALSE)

consumidores_extasis_huila <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "41"))

write.csv(consumidores_extasis_huila, "consumidores_extasis_huila.csv", row.names = FALSE)

consumidores_heroina_huila <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "41"))

write.csv(consumidores_heroina_huila, "consumidores_heroina_huila.csv", row.names = FALSE)

#### LA GUAJIRA ####
consumidores_guajira <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "44"))

write.csv(consumidores_guajira, "consumidores_guajira.csv", row.names = FALSE)

consumidores_marihuna_guajira <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "44"))

write.csv(consumidores_marihuna_guajira, "consumidores_marihuna_guajira.csv", row.names = FALSE)

consumidores_basuco_guajira <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "44"))

write.csv(consumidores_basuco_guajira, "consumidores_basuco_guajira.csv", row.names = FALSE)

consumidores_cocaina_guajira <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "44"))

write.csv(consumidores_cocaina_guajira, "consumidores_cocaina_guajira.csv", row.names = FALSE)

consumidores_cocaina_guajira <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "44"))

write.csv(consumidores_cocaina_guajira, "consumidores_cocaina_guajira.csv", row.names = FALSE)

consumidores_extasis_guajira <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "44"))

write.csv(consumidores_extasis_guajira, "consumidores_extasis_guajira.csv", row.names = FALSE)

consumidores_heroina_guajira <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "44"))

write.csv(consumidores_heroina_guajira, "consumidores_heroina_guajira.csv", row.names = FALSE)

#### MAGDALENA ####
consumidores_magdalena <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "47"))

write.csv(consumidores_magdalena, "consumidores_magdalena.csv", row.names = FALSE)

consumidores_marihuna_magdalena <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "47"))

write.csv(consumidores_marihuna_magdalena, "consumidores_marihuna_magdalena.csv", row.names = FALSE)

consumidores_basuco_magdalena <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "47"))

write.csv(consumidores_basuco_magdalena, "consumidores_basuco_magdalena.csv", row.names = FALSE)

consumidores_cocaina_magdalena <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "47"))

write.csv(consumidores_cocaina_magdalena, "consumidores_cocaina_magdalena.csv", row.names = FALSE)

consumidores_cocaina_magdalena <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "47"))

write.csv(consumidores_cocaina_magdalena, "consumidores_cocaina_magdalena.csv", row.names = FALSE)

consumidores_extasis_magdalena <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "47"))

write.csv(consumidores_extasis_magdalena, "consumidores_extasis_magdalena.csv", row.names = FALSE)

consumidores_heroina_magdalena <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "47"))

write.csv(consumidores_heroina_magdalena, "consumidores_heroina_magdalena.csv", row.names = FALSE)

#### META ####
consumidores_meta <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "50"))

write.csv(consumidores_meta, "consumidores_meta.csv", row.names = FALSE)

consumidores_marihuna_meta <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "50"))

write.csv(consumidores_marihuna_meta, "consumidores_marihuna_meta.csv", row.names = FALSE)

consumidores_basuco_meta <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "50"))

write.csv(consumidores_basuco_meta, "consumidores_basuco_meta.csv", row.names = FALSE)

consumidores_cocaina_meta <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "50"))

write.csv(consumidores_cocaina_meta, "consumidores_cocaina_meta.csv", row.names = FALSE)

consumidores_extasis_meta <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "50"))

write.csv(consumidores_extasis_meta, "consumidores_extasis_meta.csv", row.names = FALSE)

consumidores_heroina_meta <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "50"))

write.csv(consumidores_heroina_meta, "consumidores_heroina_meta.csv", row.names = FALSE)

#### NARIÑO ####
consumidores_narino <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "52"))

write.csv(consumidores_narino, "consumidores_narino.csv", row.names = FALSE)

consumidores_marihuna_narino <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "52"))

write.csv(consumidores_marihuna_narino, "consumidores_marihuna_narino.csv", row.names = FALSE)

consumidores_basuco_narino <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "52"))

write.csv(consumidores_basuco_narino, "consumidores_basuco_narino.csv", row.names = FALSE)

consumidores_cocaina_narino <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "52"))

write.csv(consumidores_cocaina_narino, "consumidores_cocaina_narino.csv", row.names = FALSE)

consumidores_extasis_narino <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "52"))

write.csv(consumidores_extasis_narino, "consumidores_extasis_narino.csv", row.names = FALSE)

consumidores_heroina_narino <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "52"))

write.csv(consumidores_heroina_narino, "consumidores_heroina_narino.csv", row.names = FALSE)

#### N.SANTANDER ####
consumidores_norte_santander <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "54"))

write.csv(consumidores_norte_santander, "consumidores_norte_santander.csv", row.names = FALSE)

consumidores_marihuna_norte_santander <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "54"))

write.csv(consumidores_marihuna_norte_santander, "consumidores_marihuna_norte_santander.csv", row.names = FALSE)

consumidores_basuco_norte_santander <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "54"))

write.csv(consumidores_basuco_norte_santander, "consumidores_basuco_norte_santander.csv", row.names = FALSE)

consumidores_cocaina_norte_santander <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "54"))

write.csv(consumidores_cocaina_norte_santander, "consumidores_cocaina_norte_santander.csv", row.names = FALSE)

consumidores_extasis_norte_santander <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "54"))

write.csv(consumidores_extasis_norte_santander, "consumidores_extasis_norte_santander.csv", row.names = FALSE)

consumidores_heroina_norte_santander <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "54"))

write.csv(consumidores_heroina_norte_santander, "consumidores_heroina_norte_santander.csv", row.names = FALSE)

#### PUTUMAYO ####
consumidores_putumayo <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "86"))

write.csv(consumidores_putumayo, "consumidores_putumayo.csv", row.names = FALSE)

consumidores_marihuna_putumayo <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "86"))

write.csv(consumidores_marihuna_putumayo, "consumidores_marihuna_putumayo.csv", row.names = FALSE)

consumidores_basuco_putumayo <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "86"))

write.csv(consumidores_basuco_putumayo, "consumidores_basuco_putumayo.csv", row.names = FALSE)

consumidores_cocaina_putumayo <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "86"))

write.csv(consumidores_cocaina_putumayo, "consumidores_cocaina_putumayo.csv", row.names = FALSE)

consumidores_extasis_putumayo <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "86"))

write.csv(consumidores_extasis_putumayo, "consumidores_extasis_putumayo.csv", row.names = FALSE)

consumidores_heroina_putumayo <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "86"))

write.csv(consumidores_heroina_putumayo, "consumidores_heroina_putumayo.csv", row.names = FALSE)

#### QUINDIO ####
consumidores_quindio <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "63"))

write.csv(consumidores_quindio, "consumidores_quindio.csv", row.names = FALSE)

consumidores_marihuna_quindio <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "63"))

write.csv(consumidores_marihuna_quindio, "consumidores_marihuna_quindio.csv", row.names = FALSE)

consumidores_basuco_quindio <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "63"))

write.csv(consumidores_basuco_quindio, "consumidores_basuco_quindio.csv", row.names = FALSE)

consumidores_cocaina_quindio <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "63"))

write.csv(consumidores_cocaina_quindio, "consumidores_cocaina_quindio.csv", row.names = FALSE)

consumidores_extasis_quindio <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "63"))

write.csv(consumidores_extasis_quindio, "consumidores_extasis_quindio.csv", row.names = FALSE)

consumidores_heroina_quindio <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "63"))

write.csv(consumidores_heroina_quindio, "consumidores_heroina_quindio.csv", row.names = FALSE)

#### RISARALDA ####

consumidores_risaralda <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "66"))

write.csv(consumidores_risaralda, "consumidores_risaralda.csv", row.names = FALSE)

consumidores_marihuna_risaralda <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "66"))

write.csv(consumidores_marihuna_risaralda, "consumidores_marihuna_risaralda.csv", row.names = FALSE)

consumidores_basuco_risaralda <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "66"))

write.csv(consumidores_basuco_risaralda, "consumidores_basuco_risaralda.csv", row.names = FALSE)

consumidores_cocaina_risaralda <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "66"))

write.csv(consumidores_cocaina_risaralda, "consumidores_cocaina_risaralda.csv", row.names = FALSE)

consumidores_extasis_risaralda <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "66"))

write.csv(consumidores_extasis_risaralda, "consumidores_extasis_risaralda.csv", row.names = FALSE)

consumidores_heroina_risaralda <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "66"))

write.csv(consumidores_heroina_risaralda, "consumidores_heroina_risaralda.csv", row.names = FALSE)

#### SAN ANDRES ####
consumidores_san_andres <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "88"))

write.csv(consumidores_san_andres, "consumidores_san_andres.csv", row.names = FALSE)

consumidores_marihuna_san_andres <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "88"))

write.csv(consumidores_marihuna_san_andres, "consumidores_marihuna_san_andres.csv", row.names = FALSE)

consumidores_basuco_san_andres <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "88"))

write.csv(consumidores_basuco_san_andres, "consumidores_basuco_san_andres.csv", row.names = FALSE)

consumidores_cocaina_san_andres <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "88"))

write.csv(consumidores_cocaina_san_andres, "consumidores_cocaina_san_andres.csv", row.names = FALSE)

consumidores_extasis_san_andres <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "88"))

write.csv(consumidores_extasis_san_andres, "consumidores_extasis_san_andres.csv", row.names = FALSE)

consumidores_heroina_san_andres <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "88"))

write.csv(consumidores_heroina_san_andres, "consumidores_heroina_san_andres.csv", row.names = FALSE)

#### SANTANDER ####
consumidores_santander <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "68"))

write.csv(consumidores_santander, "consumidores_santander.csv", row.names = FALSE)

consumidores_marihuna_santander <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "68"))

write.csv(consumidores_marihuna_santander, "consumidores_marihuna_santander.csv", row.names = FALSE)

consumidores_basuco_santander <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "68"))

write.csv(consumidores_basuco_santander, "consumidores_basuco_santander.csv", row.names = FALSE)

consumidores_cocaina_santander <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "68"))

write.csv(consumidores_cocaina_santander, "consumidores_cocaina_santander.csv", row.names = FALSE)

consumidores_extasis_santander <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "68"))

write.csv(consumidores_extasis_santander, "consumidores_extasis_santander.csv", row.names = FALSE)

consumidores_heroina_santander <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "68"))

write.csv(consumidores_heroina_santander, "consumidores_heroina_santander.csv", row.names = FALSE)


#### SUCRE ####
consumidores_sucre <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "70"))

write.csv(consumidores_sucre, "consumidores_sucre.csv", row.names = FALSE)

consumidores_marihuna_sucre <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "70"))

write.csv(consumidores_marihuna_sucre, "consumidores_marihuna_sucre.csv", row.names = FALSE)

consumidores_basuco_sucre <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "70"))

write.csv(consumidores_basuco_sucre, "consumidores_basuco_sucre.csv", row.names = FALSE)

consumidores_cocaina_sucre <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "70"))

write.csv(consumidores_cocaina_sucre, "consumidores_cocaina_sucre.csv", row.names = FALSE)

consumidores_extasis_sucre <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "70"))

write.csv(consumidores_extasis_sucre, "consumidores_extasis_sucre.csv", row.names = FALSE)

consumidores_heroina_sucre <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "70"))

write.csv(consumidores_heroina_sucre, "consumidores_heroina_sucre.csv", row.names = FALSE)

#### TOLIMA ####
consumidores_tolima <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "73"))

write.csv(consumidores_tolima, "consumidores_tolima.csv", row.names = FALSE)

consumidores_marihuna_tolima <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "73"))

write.csv(consumidores_marihuna_tolima, "consumidores_marihuna_tolima.csv", row.names = FALSE)

consumidores_basuco_tolima <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "73"))

write.csv(consumidores_basuco_tolima, "consumidores_basuco_tolima.csv", row.names = FALSE)

consumidores_cocaina_tolima <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "73"))

write.csv(consumidores_cocaina_tolima, "consumidores_cocaina_tolima.csv", row.names = FALSE)

consumidores_extasis_tolima <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "73"))

write.csv(consumidores_extasis_tolima, "consumidores_extasis_tolima.csv", row.names = FALSE)

consumidores_heroina_tolima <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "73"))

write.csv(consumidores_heroina_tolima, "consumidores_heroina_tolima.csv", row.names = FALSE)

#### VALLE DEL CAUCA ####
consumidores_valle_del_cauca <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "76"))

write.csv(consumidores_valle_del_cauca, "consumidores_valle_del_cauca.csv", row.names = FALSE)

consumidores_marihuna_valle_del_cauca <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "76"))

write.csv(consumidores_marihuna_valle_del_cauca, "consumidores_marihuna_valle_del_cauca.csv", row.names = FALSE)

consumidores_basuco_valle_del_cauca <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "76"))

write.csv(consumidores_basuco_valle_del_cauca, "consumidores_basuco_valle_del_cauca.csv", row.names = FALSE)

consumidores_cocaina_valle_del_cauca <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "76"))

write.csv(consumidores_cocaina_valle_del_cauca, "consumidores_cocaina_valle_del_cauca.csv", row.names = FALSE)

consumidores_extasis_valle_del_cauca <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "76"))

write.csv(consumidores_extasis_valle_del_cauca, "consumidores_extasis_valle_del_cauca.csv", row.names = FALSE)

consumidores_heroina_valle_del_cauca <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "76"))

write.csv(consumidores_heroina_valle_del_cauca, "consumidores_heroina_valle_del_cauca.csv", row.names = FALSE)

#### VAUPES ####
consumidores_vaupes <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "97"))

write.csv(consumidores_vaupes, "consumidores_vaupes.csv", row.names = FALSE)

consumidores_marihuna_vaupes <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "97"))

write.csv(consumidores_marihuna_vaupes, "consumidores_marihuna_vaupes.csv", row.names = FALSE)

consumidores_basuco_vaupes <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "97"))

write.csv(consumidores_basuco_vaupes, "consumidores_basuco_vaupes.csv", row.names = FALSE)

consumidores_cocaina_vaupes <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "97"))

write.csv(consumidores_cocaina_vaupes, "consumidores_cocaina_vaupes.csv", row.names = FALSE)

consumidores_extasis_vaupes <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "97"))

write.csv(consumidores_extasis_vaupes, "consumidores_extasis_vaupes.csv", row.names = FALSE)

consumidores_heroina_vaupes <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "97"))

write.csv(consumidores_heroina_vaupes, "consumidores_heroina_vaupes.csv", row.names = FALSE)

#### VICHADA ####
consumidores_vichada <- consumidores_total_colombia %>%
  filter(startsWith(as.character(consumidores_total_colombia$Depmuni), "99"))

write.csv(consumidores_vichada, "consumidores_vichada.csv", row.names = FALSE)

consumidores_marihuana_vichada <- consumdores_marihuana_colombia %>%
  filter(startsWith(as.character(consumdores_marihuana_colombia$Depmuni), "99"))

write.csv(consumidores_marihuana_vichada, "consumidores_marihuana_vichada.csv", row.names = FALSE)

consumidores_basuco_vichada <- consumidores_basuco_colombia %>%
  filter(startsWith(as.character(consumidores_basuco_colombia$Depmuni), "99"))

write.csv(consumidores_basuco_vichada, "consumidores_basuco_vichada.csv", row.names = FALSE)

consumidores_cocaina_vichada <- consumidores_cocaina_colombia %>%
  filter(startsWith(as.character(consumidores_cocaina_colombia$Depmuni), "99"))

write.csv(consumidores_cocaina_vichada, "consumidores_cocaina_vichada.csv", row.names = FALSE)

consumidores_extasis_vichada <- consumidores_extasis_colombia %>%
  filter(startsWith(as.character(consumidores_extasis_colombia$Depmuni), "99"))

write.csv(consumidores_extasis_vichada, "consumidores_extasis_vichada.csv", row.names = FALSE)

consumidores_heroina_vichada <- consumidores_heroina_colombia %>%
  filter(startsWith(as.character(consumidores_heroina_colombia$Depmuni), "99"))

write.csv(consumidores_heroina_vichada, "consumidores_heroina_vichada.csv", row.names = FALSE)
