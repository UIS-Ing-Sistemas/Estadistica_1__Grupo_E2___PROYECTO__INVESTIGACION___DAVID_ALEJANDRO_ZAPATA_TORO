library(sf)
library(ggplot2)
library(readr)
library(dplyr)
library(viridis)

total_amazonas <- nrow(datos1_grupo_41)
total_antioquia <- nrow(datos1_grupo_05)
total_arauca <- nrow(datos1_grupo_81)
total_atlantico <- nrow(grupo_08)
total_bogota <- nrow(datos1_grupo_11)
total_bolivar <- nrow(datos1_grupo_13)
total_boyaca <- nrow(datos1_grupo_15)
total_caldas <- nrow(datos1_grupo_17)
total_caqueta <- nrow(datos1_grupo_18)
total_casanare <- nrow(datos1_grupo_85)
total_cauca <- nrow(datos1_grupo_19)
total_cesar <- nrow(datos1_grupo_20)
total_choco <- nrow(datos1_grupo_27)
total_cordoba <- nrow(datos1_grupo_23)
total_cundinamarca <- nrow(datos1_grupo_25)
total_guania <- nrow(datos1_grupo_94)
total_guaviare <- nrow(datos1_grupo_95)
total_huila <- nrow(consumidores_huila)
total_guajira <- nrow(consumidores_guajira)
total_magdalena <- nrow(consumidores_magdalena)
total_meta <- nrow(consumidores_meta)
total_nsantander <- nrow(consumidores_norte_santander)
total_nariño <- nrow(consumidores_narino)
total_putumayo <- nrow(consumidores_putumayo)
total_quindio <- nrow(consumidores_quindio)
total_risaralda <- nrow(consumidores_risaralda)
total_santander <- nrow(consumidores_santander)
total_sucre <- nrow(consumidores_sucre)
total_tolima <- nrow(consumidores_tolima)
total_vcauca <- nrow(consumidores_valle_del_cauca)
total_vaupes <- nrow(consumidores_vaupes)
total_vichada <- nrow(consumidores_vichada)

orden_departamentos <- data.frame(
  departamentos = c("amazonas", "antioquia", "arauca", "atlantico", "bogota", "bolivar", "boyaca", 
                    "caldas", "caqueta", "casanare", "cauca", "cesar", 
                    "choco", "cordoba", "cundinamarca", "guainia", "guajira", 
                    "guaviare", "huila", "magdalena", "meta", "nsantander", 
                    "nariño", "putumayo", "quindio", "risaralda", 
                    "santander", "sucre", "tolima", "vcauca", "vaupes", "vichada"),
  consumo_total = c(3118, total_antioquia, total_arauca, total_atlantico, total_bogota,
                    total_bolivar, total_boyaca, total_caldas, total_caqueta,
                    total_casanare, total_cauca, total_cesar, total_choco, total_cordoba,
                    total_cundinamarca, total_guania, total_guaviare, total_huila,
                    total_guajira, total_magdalena, total_meta, total_nsantander, total_nariño,
                    total_putumayo, total_quindio, total_risaralda, total_santander, total_sucre,
                    total_tolima, total_vcauca, total_vaupes, total_vichada))

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
