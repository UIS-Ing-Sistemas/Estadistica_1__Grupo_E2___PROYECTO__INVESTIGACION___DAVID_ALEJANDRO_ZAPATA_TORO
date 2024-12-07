library(readr)
library(dplyr)
library(sf)
library(ggplot2)
library(viridis)

setwd("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/DEPARTAMENTOS/Santander")
datasets <- list.files(pattern = "*.csv")
csv_con_valores_completos <- sapply(datasets, read.csv, simplify = FALSE)

consumidores_marihuana_bucaramanga <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68001"))

consumidores_marihuana_aguada <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68013"))

consumidores_marihuana_albania <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68020"))

consumidores_marihuana_aratoca <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68051"))

consumidores_marihuana_barbosa <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68077"))

consumidores_marihuana_barichara <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68079"))

consumidores_marihuana_barrancabermeja <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68081"))

consumidores_marihuana_betulia <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68092"))

consumidores_marihuana_bolívar <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68101"))

consumidores_marihuana_cabrera <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68121"))

consumidores_marihuana_california <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68132"))

consumidores_marihuana_capitanejo <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68147"))

consumidores_marihuana_carcasí <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68152"))

consumidores_marihuana_cepitá <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68160"))

consumidores_marihuana_cerrito <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68162"))

consumidores_marihuana_charalá <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68167"))

consumidores_marihuana_charta <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68169"))

consumidores_marihuana_chima <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68176"))

consumidores_marihuana_chipatá <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68179"))

consumidores_marihuana_cimitarra <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68190"))

consumidores_marihuana_concepción <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68207"))

consumidores_marihuana_confines <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68209"))

consumidores_marihuana_contratación <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68211"))

consumidores_marihuana_coromoro <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68217"))

consumidores_marihuana_curití <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68229"))

consumidores_marihuana_el_carmen_de_chucurí <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68235"))

consumidores_marihuana_el_guacamayo <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68245"))

consumidores_marihuana_el_peñón <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68250"))

consumidores_marihuana_el_playón <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68255"))

consumidores_marihuana_encino <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68264"))

consumidores_marihuana_enciso <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68266"))

consumidores_marihuana_florián <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68271"))

consumidores_marihuana_floridablanca <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68276"))

consumidores_marihuana_galán <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68296"))

consumidores_marihuana_gámbita <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68298"))

consumidores_marihuana_girón <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68307"))

consumidores_marihuana_guaca <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68318"))

consumidores_marihuana_guadalupe <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character($consumidores_marihuna_santander.csv$Depmuni), "68320"))

consumidores_marihuana_guapotá <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68322"))

consumidores_marihuana_guavatá <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68324"))

consumidores_marihuana_güepsa <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68327"))

consumidores_marihuana_hato <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68344"))

consumidores_marihuana_jesús_maría <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68368"))

consumidores_marihuana_jordán <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68370"))

consumidores_marihuana_la_belleza <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68377"))

consumidores_marihuana_landázuri <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68385"))

consumidores_marihuana_la_paz <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68397"))

consumidores_marihuana_lebrija <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68406"))

consumidores_marihuana_los_santos <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68418"))

consumidores_marihuana_macaravita <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68425"))

consumidores_marihuana_málaga <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68432"))

consumidores_marihuana_matanza <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68444"))

consumidores_marihuana_mogotes <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68464"))

consumidores_marihuana_molagavita <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68468"))

consumidores_marihuana_ocamonte <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68498"))

consumidores_marihuana_oiba <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68500"))

consumidores_marihuana_onzaga <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68502"))

consumidores_marihuana_palmar <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68522"))

consumidores_marihuana_palmas_del_socorro <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68524"))

consumidores_marihuana_páramo <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68533"))

consumidores_marihuana_piedecuesta <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68547"))

consumidores_marihuana_pinchote <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68549"))

consumidores_marihuana_puente_nacional <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68572"))

consumidores_marihuana_puerto_parra <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68573"))

consumidores_marihuana_puerto_wilches <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68575"))

consumidores_marihuana_rionegro <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68615"))

consumidores_marihuana_sabana_de_torres <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68655"))

consumidores_marihuana_san_andrés <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68669"))

consumidores_marihuana_san_benito <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68673"))

consumidores_marihuana_san_gil <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68679"))

consumidores_marihuana_san_joaquín <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68682"))

consumidores_marihuana_san_josé_de_miranda <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68684"))

consumidores_marihuana_san_miguel <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68686"))

consumidores_marihuana_san_vicente_de_chucurí <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68689"))

consumidores_marihuana_santa_bárbara <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68705"))

consumidores_marihuana_santa_helena_del_opón <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68720"))

consumidores_marihuana_simacota <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68745"))

consumidores_marihuana_socorro <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68755"))

consumidores_marihuana_suaita <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68770"))

consumidores_marihuana_sucre <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68773"))

consumidores_marihuana_suratá <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68780"))

consumidores_marihuana_tona <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68820"))

consumidores_marihuana_valle_de_san_josé <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68855"))

consumidores_marihuana_vélez <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68861"))

consumidores_marihuana_vetas <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68867"))

consumidores_marihuana_villanueva <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68872"))

consumidores_marihuana_zapatoca <- csv_con_valores_completos$consumidores_marihuna_santander.csv %>%
  filter(startsWith(as.character(csv_con_valores_completos$consumidores_marihuna_santander.csv$Depmuni), "68895"))

##### MAPA DE CALOR DE SANTANDER #####

consumo_marihuana_por_municipio_santander <- data.frame(
  departamentos = c("ZAPATOCA", "PUERTO WILCHES", "MALAGA", "CARCASI", "LA BELLEZA", "CAPITANEJO", "SANTA HELENA DEL OPON", "LA PAZ", "SUAITA", "MATANZA", 
                    "LOS SANTOS", "GALAN", "SUCRE", "PUENTE NACIONAL", "GAMBITA", "MAGDALENA", "GUAVATA", "MOLAGAVITA", "ENCISO", "CHIMA", "GUACA", "CHARTA", 
                    "CALIFORNIA", "SAN ANDRES", "EL PEÑON", "VELEZ", "LANDAZURI", "GUAPOTA", "MACARAVITA", "SAN MIGUEL", "ALBANIA", "CEPITA", "SABANA DE TORRES", 
                    "GUADALUPE", "PIEDECUESTA", "SAN VICENTE DE CHUCURI", "SANTA BARBARA", "PINCHOTE", "ENCINO", "COROMORO", "PALMAS DEL SOCORRO", "CONFINES", 
                    "OCAMONTE", "RIONEGRO", "SURATA", "SIMACOTA", "VILLANUEVA", "OIBA", "ONZAGA", "VALLE DE SAN JOSE", "BETULIA", "BARRANCABERMEJA", "JORDAN",
                    "PARAMO", "CHIPATA", "SAN JOAQUIN", "PALMAR", "SAN JOSE DE MIRANDA", "LEBRIJA", "BUCARAMANGA", "TONA", "MOGOTES", "AGUADA", "FLORIAN", "VETAS",
                    "EL CARMEN DE CHUCURI", "CIMITARRA", "PUERTO PARRA", "ARATOCA", "SAN BENITO", "JESUS MARIA", "BOLIVAR", "EL GUACAMAYO", "HATO", "SOCORRO", 
                    "CHARALA", "CONTRATACION", "FLORIDABLANCA", "EL PLAYON", "GIRON", "CONCEPCION", "CERRITO", "GUEPSA", "BARICHARA", "CABRERA", "CURITI", "SAN GIL",
                    "BARBOSA"),
  consumo_total = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,23,0,7,0,0,0,0,0,0,0,0))

mapa_santander <- st_read("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Mapeo/Mapas/shapes/shapes.shp")

mapa_santander_nombre_municipio <- mapa_santander[,6]

mapa_consumo_marihuana_santander <- mapa_santander_nombre_municipio %>%
  left_join(consumo_marihuana_por_municipio_santander, by = c("nombre_mpi" = "departamentos")) 

ggplot(data = mapa_consumo_marihuana_santander) +
  geom_sf(aes(fill = consumo_total)) +
  scale_fill_viridis(option = "plasma", na.value = "grey") +
  theme_minimal() +
  labs(title = "Consumo de marihuana Santander",
       fill = "Consumo")


