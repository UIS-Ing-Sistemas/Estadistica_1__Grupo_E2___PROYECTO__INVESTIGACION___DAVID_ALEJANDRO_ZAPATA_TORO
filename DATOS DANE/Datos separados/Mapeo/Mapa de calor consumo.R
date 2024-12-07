library(sf)
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

setwd("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/DEPARTAMENTOS/CSV TOTALES POR DPTO")
datasets <- list.files(pattern = "*.csv")
csv_con_valores_completos <- sapply(datasets, read.csv, simplify = FALSE)


total_amazonas <- nrow(csv_con_valores_completos$datos1_grupo_41.csv)
total_antioquia <- nrow(csv_con_valores_completos$datos1_grupo_05.csv)
total_arauca <- nrow(csv_con_valores_completos$datos1_grupo_81.csv)
total_atlantico <- nrow(csv_con_valores_completos$datos1_grupo_08.csv)
total_bogota <- nrow(csv_con_valores_completos$datos1_grupo_11.csv)
total_bolivar <- nrow(csv_con_valores_completos$datos1_grupo_13.csv)
total_boyaca <- nrow(csv_con_valores_completos$datos1_grupo_15.csv)
total_caldas <- nrow(csv_con_valores_completos$datos1_grupo_17.csv)
total_caqueta <- nrow(csv_con_valores_completos$datos1_grupo_18.csv)
total_casanare <- nrow(csv_con_valores_completos$datos1_grupo_85.csv)
total_cauca <- nrow(csv_con_valores_completos$datos1_grupo_19.csv)
total_cesar <- nrow(csv_con_valores_completos$datos1_grupo_20.csv)
total_choco <- nrow(csv_con_valores_completos$datos1_grupo_27.csv)
total_cordoba <- nrow(csv_con_valores_completos$datos1_grupo_23.csv)
total_cundinamarca <- nrow(csv_con_valores_completos$datos1_grupo_25.csv)
total_guania <- nrow(csv_con_valores_completos$datos1_grupo_94.csv)
total_guaviare <- nrow(csv_con_valores_completos$datos1_grupo_95.csv)
total_huila <- nrow(csv_con_valores_completos$consumidores_huila.csv)
total_guajira <- nrow(csv_con_valores_completos$consumidores_guajira.csv)
total_magdalena <- nrow(csv_con_valores_completos$consumidores_magdalena.csv)
total_meta <- nrow(csv_con_valores_completos$consumidores_meta.csv)
total_nsantander <- nrow(csv_con_valores_completos$consumidores_norte_santander.csv)
total_nariño <- nrow(csv_con_valores_completos$consumidores_narino.csv)
total_putumayo <- nrow(csv_con_valores_completos$consumidores_putumayo.csv)
total_quindio <- nrow(csv_con_valores_completos$consumidores_quindio.csv)
total_risaralda <- nrow(csv_con_valores_completos$consumidores_risaralda.csv)
total_santander <- nrow(csv_con_valores_completos$consumidores_santander.csv)
total_sucre <- nrow(csv_con_valores_completos$consumidores_sucre.csv)
total_tolima <- nrow(csv_con_valores_completos$consumidores_tolima.csv)
total_vcauca <- nrow(csv_con_valores_completos$consumidores_valle_del_cauca.csv)
total_vaupes <- nrow(csv_con_valores_completos$consumidores_vaupes.csv)
total_vichada <- nrow(csv_con_valores_completos$consumidores_vichada.csv)

orden_departamentos <- data.frame(
  departamentos = c("VAUPÉS", "ANTIOQUIA", "ATLÁNTICO", "BOGOTÁ, D.C.", "BOLÍVAR", "BOYACÁ", "CALDAS", "CAQUETÁ", "CAUCA", "CESAR", 
                    "CÓRDOBA", "CUNDINAMARCA", "CHOCÓ", "HUILA", "LA GUAJIRA", "MAGDALENA", "META", "NARIÑO", "NORTE DE SANTANDER", 
                    "QUINDIO", "RISARALDA", "SANTANDER", "SUCRE", "TOLIMA", "VALLE DEL CAUCA", "ARAUCA", "CASANARE", "PUTUMAYO", 
                    "GUAINÍA", "GUAVIARE", "VICHADA", "AMAZONAS"),
  consumo_total = c(total_vaupes, total_antioquia, total_atlantico, total_bogota, total_bolivar,
                    total_boyaca, total_caldas, total_caqueta, total_cauca, total_cesar, total_cordoba,
                    total_cundinamarca, total_choco, total_huila, total_guajira, total_magdalena, total_meta,
                    total_nariño, total_nsantander, total_quindio, total_risaralda,
                    total_santander, total_sucre, total_tolima, total_vcauca, total_arauca,
                    total_casanare, total_putumayo, total_guania, total_guaviare, total_vichada, total_amazonas))

mapa_colombia <- st_read("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Mapeo/Mapas/MGN2022_DPTO_POLITICO/MGN_DPTO_POLITICO.shp")

mapa_colombia_codigo <- mapa_colombia[,2]



mapa_consumo <- mapa_colombia_codigo %>%
  left_join(orden_departamentos, by = c("DPTO_CNMBR" = "departamentos")) 

ggplot(data = mapa_consumo) +
  geom_sf(aes(fill = consumo_total)) +
  scale_fill_viridis(option = "plasma", na.value = "grey") +
  theme_minimal() +
  labs(title = "Consumo de Sustancias Psicoactivas en Colombia",
       fill = "Consumo")
