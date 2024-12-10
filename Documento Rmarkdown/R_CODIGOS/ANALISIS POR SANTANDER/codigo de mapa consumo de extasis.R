library(readr)
library(dplyr)
library(sf)
library(ggplot2)
library(viridis)

municipios_santander <- c(
  "Aguada" = "68013",
  "Albania" = "68020",
  "Aratoca" = "68051",
  "Barbosa" = "68077",
  "Barichara" = "68079",
  "Barrancabermeja" = "68081",
  "Betulia" = "68092",
  "Bolívar" = "68101",
  "Bucaramanga" = "68001",
  "Cabrera" = "68121",
  "California" = "68132",
  "Capitanejo" = "68147",
  "Carcasí" = "68152",
  "Cepitá" = "68160",
  "Cerrito" = "68162",
  "Charalá" = "68167",
  "Charta" = "68169",
  "Chima" = "68176",
  "Chipatá" = "68179",
  "Cimitarra" = "68190",
  "Concepción" = "68207",
  "Confines" = "68209",
  "Contratación" = "68211",
  "Coromoro" = "68217",
  "Curití" = "68229",
  "El Carmen de Chucurí" = "68235",
  "El Guacamayo" = "68245",
  "El Peñón" = "68250",
  "El Playón" = "68255",
  "Encino" = "68264",
  "Enciso" = "68266",
  "Florián" = "68271",
  "Floridablanca" = "68276",
  "Galán" = "68296",
  "Gámbita" = "68298",
  "Girón" = "68307",
  "Guaca" = "68318",
  "Guadalupe" = "68320",
  "Guapotá" = "68322",
  "Guavatá" = "68324",
  "Güepsa" = "68327",
  "Hato" = "68344",
  "Jesús María" = "68368",
  "Jordán" = "68370",
  "La Belleza" = "68377",
  "Landázuri" = "68385",
  "La Paz" = "68397",
  "Lebrija" = "68406",
  "Los Santos" = "68418",
  "Macaravita" = "68425",
  "Málaga" = "68432",
  "Matanza" = "68444",
  "Mogotes" = "68464",
  "Molagavita" = "68468",
  "Ocamonte" = "68498",
  "Oiba" = "68500",
  "Onzaga" = "68502",
  "Palmar" = "68522",
  "Palmas del Socorro" = "68524",
  "Páramo" = "68533",
  "Piedecuesta" = "68547",
  "Pinchote" = "68549",
  "Puente Nacional" = "68572",
  "Puerto Parra" = "68573",
  "Puerto Wilches" = "68575",
  "Rionegro" = "68615",
  "Sabana de Torres" = "68655",
  "San Andrés" = "68669",
  "San Benito" = "68673",
  "San Gil" = "68679",
  "San Joaquín" = "68682",
  "San José de Miranda" = "68684",
  "San Miguel" = "68686",
  "San Vicente de Chucurí" = "68689",
  "Santa Bárbara" = "68705",
  "Santa Helena del Opón" = "68720",
  "Simacota" = "68745",
  "Socorro" = "68755",
  "Suaita" = "68770",
  "Sucre" = "68773",
  "Suratá" = "68780",
  "Tona" = "68820",
  "Valle de San José" = "68855",
  "Vélez" = "68861",
  "Vetas" = "68867",
  "Villanueva" = "68872",
  "Zapatoca" = "68895"
)

datos_consumidores <- list()

for (municipio in names(municipios_santander)) {
  codigo <- municipios_santander[municipio]
  
  datos_consumidores[[municipio]] <- csv_con_valores_completos$consumidores_extasis_santander.csv %>%
    filter(startsWith(as.character(csv_con_valores_completos$consumidores_extasis_santander.csv$Depmuni), codigo))
}

total_bucaramanga <- nrow(datos_consumidores[["Bucaramanga"]])
total_aguada <- nrow(datos_consumidores[["Aguada"]])
total_albania <- nrow(datos_consumidores[["Albania"]])
total_aratoca <- nrow(datos_consumidores[["Aratoca"]])
total_barbosa <- nrow(datos_consumidores[["Barbosa"]])
total_barichara <- nrow(datos_consumidores[["Barichara"]])
total_barrancabermeja <- nrow(datos_consumidores[["Barrancabermeja"]])
total_betulia <- nrow(datos_consumidores[["Betulia"]])
total_bolivar <- nrow(datos_consumidores[["Bolívar"]])
total_cabrera <- nrow(datos_consumidores[["Cabrera"]])
total_california <- nrow(datos_consumidores[["California"]])
total_capitanejo <- nrow(datos_consumidores[["Capitanejo"]])
total_carcasí <- nrow(datos_consumidores[["Carcasí"]])
total_cepitá <- nrow(datos_consumidores[["Cepitá"]])
total_cerrito <- nrow(datos_consumidores[["Cerrito"]])
total_charalá <- nrow(datos_consumidores[["Charalá"]])
total_charta <- nrow(datos_consumidores[["Charta"]])
total_chima <- nrow(datos_consumidores[["Chima"]])
total_chipatá <- nrow(datos_consumidores[["Chipatá"]])
total_cimitarra <- nrow(datos_consumidores[["Cimitarra"]])
total_concepción <- nrow(datos_consumidores[["Concepción"]])
total_confines <- nrow(datos_consumidores[["Confines"]])
total_contratación <- nrow(datos_consumidores[["Contratación"]])
total_coromoro <- nrow(datos_consumidores[["Coromoro"]])
total_curití <- nrow(datos_consumidores[["Curití"]])
total_el_carmen_de_chucurí <- nrow(datos_consumidores[["El Carmen de Chucurí"]])
total_el_guacamayo <- nrow(datos_consumidores[["El Guacamayo"]])
total_el_peñón <- nrow(datos_consumidores[["El Peñón"]])
total_el_playón <- nrow(datos_consumidores[["El Playón"]])
total_encino <- nrow(datos_consumidores[["Encino"]])
total_enciso <- nrow(datos_consumidores[["Enciso"]])
total_florián <- nrow(datos_consumidores[["Florián"]])
total_floridablanca <- nrow(datos_consumidores[["Floridablanca"]])
total_galán <- nrow(datos_consumidores[["Galán"]])
total_gámbita <- nrow(datos_consumidores[["Gámbita"]])
total_girón <- nrow(datos_consumidores[["Girón"]])
total_guaca <- nrow(datos_consumidores[["Guaca"]])
total_guadalupe <- nrow(datos_consumidores[["Guadalupe"]])
total_guapotá <- nrow(datos_consumidores[["Guapotá"]])
total_guavatá <- nrow(datos_consumidores[["Guavatá"]])
total_güepsa <- nrow(datos_consumidores[["Güepsa"]])
total_hato <- nrow(datos_consumidores[["Hato"]])
total_jesús_maría <- nrow(datos_consumidores[["Jesús María"]])
total_jordán <- nrow(datos_consumidores[["Jordán"]])
total_la_belleza <- nrow(datos_consumidores[["La Belleza"]])
total_landázuri <- nrow(datos_consumidores[["Landázuri"]])
total_la_paz <- nrow(datos_consumidores[["La Paz"]])
total_lebrija <- nrow(datos_consumidores[["Lebrija"]])
total_los_santos <- nrow(datos_consumidores[["Los Santos"]])
total_macaravita <- nrow(datos_consumidores[["Macaravita"]])
total_málaga <- nrow(datos_consumidores[["Málaga"]])
total_matanza <- nrow(datos_consumidores[["Matanza"]])
total_mogotes <- nrow(datos_consumidores[["Mogotes"]])
total_molagavita <- nrow(datos_consumidores[["Molagavita"]])
total_ocamonte <- nrow(datos_consumidores[["Ocamonte"]])
total_oiba <- nrow(datos_consumidores[["Oiba"]])
total_onzaga <- nrow(datos_consumidores[["Onzaga"]])
total_palmar <- nrow(datos_consumidores[["Palmar"]])
total_palmas_del_socorro <- nrow(datos_consumidores[["Palmas del Socorro"]])
total_páramo <- nrow(datos_consumidores[["Páramo"]])
total_piedecuesta <- nrow(datos_consumidores[["Piedecuesta"]])
total_pinchote <- nrow(datos_consumidores[["Pinchote"]])
total_puente_nacional <- nrow(datos_consumidores[["Puente Nacional"]])
total_puerto_parra <- nrow(datos_consumidores[["Puerto Parra"]])
total_puerto_wilches <- nrow(datos_consumidores[["Puerto Wilches"]])
total_rionegro <- nrow(datos_consumidores[["Rionegro"]])
total_sabana_de_torres <- nrow(datos_consumidores[["Sabana de Torres"]])
total_san_andrés <- nrow(datos_consumidores[["San Andrés"]])
total_san_benito <- nrow(datos_consumidores[["San Benito"]])
total_san_gil <- nrow(datos_consumidores[["San Gil"]])
total_san_joaquín <- nrow(datos_consumidores[["San Joaquín"]])
total_san_josé_de_miranda <- nrow(datos_consumidores[["San José de Miranda"]])
total_san_miguel <- nrow(datos_consumidores[["San Miguel"]])
total_san_vicente_de_chucurí <- nrow(datos_consumidores[["San Vicente de Chucurí"]])
total_santa_bárbara <- nrow(datos_consumidores[["Santa Bárbara"]])
total_santa_helena_del_opón <- nrow(datos_consumidores[["Santa Helena del Opón"]])
total_simacota <- nrow(datos_consumidores[["Simacota"]])
total_socorro <- nrow(datos_consumidores[["Socorro"]])
total_suaita <- nrow(datos_consumidores[["Suaita"]])
total_sucre <- nrow(datos_consumidores[["Sucre"]])
total_suratá <- nrow(datos_consumidores[["Suratá"]])
total_tona <- nrow(datos_consumidores[["Tona"]])
total_valle_de_san_josé <- nrow(datos_consumidores[["Valle de San José"]])
total_vélez <- nrow(datos_consumidores[["Vélez"]])
total_vetas <- nrow(datos_consumidores[["Vetas"]])
total_villanueva <- nrow(datos_consumidores[["Villanueva"]])
total_zapatoca <- nrow(datos_consumidores[["Zapatoca"]])



consumo_extasis_por_municipio_santander <- data.frame(
  municipios = c("ZAPATOCA", "PUERTO WILCHES", "MALAGA", "CARCASI", "LA BELLEZA", "CAPITANEJO", "SANTA HELENA DEL OPON", "LA PAZ", "SUAITA", "MATANZA", 
                 "LOS SANTOS", "GALAN", "SUCRE", "PUENTE NACIONAL", "GAMBITA", "MAGDALENA", "GUAVATA", "MOLAGAVITA", "ENCISO", "CHIMA", "GUACA", "CHARTA", 
                 "CALIFORNIA", "SAN ANDRES", "EL PEÑON", "VELEZ", "LANDAZURI", "GUAPOTA", "MACARAVITA", "SAN MIGUEL", "ALBANIA", "CEPITA", "SABANA DE TORRES", 
                 "GUADALUPE", "PIEDECUESTA", "SAN VICENTE DE CHUCURI", "SANTA BARBARA", "PINCHOTE", "ENCINO", "COROMORO", "PALMAS DEL SOCORRO", "CONFINES", 
                 "OCAMONTE", "RIONEGRO", "SURATA", "SIMACOTA", "VILLANUEVA", "OIBA", "ONZAGA", "VALLE DE SAN JOSE", "BETULIA", "BARRANCABERMEJA", "JORDAN",
                 "PARAMO", "CHIPATA", "SAN JOAQUIN", "PALMAR", "SAN JOSE DE MIRANDA", "LEBRIJA", "BUCARAMANGA", "TONA", "MOGOTES", "AGUADA", "FLORIAN", "VETAS",
                 "EL CARMEN DE CHUCURI", "CIMITARRA", "PUERTO PARRA", "ARATOCA", "SAN BENITO", "JESUS MARIA", "BOLIVAR", "EL GUACAMAYO", "HATO", "SOCORRO", 
                 "CHARALA", "CONTRATACION", "FLORIDABLANCA", "EL PLAYON", "GIRON", "CONCEPCION", "CERRITO", "GUEPSA", "BARICHARA", "CABRERA", "CURITI", "SAN GIL",
                 "BARBOSA"),
  consumo_total = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0))

mapa_santander <- st_read("C:/Users/ASUS/Desktop/Estadistica/Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Datos separados/Mapeo/Mapas/shapes/shapes.shp")

mapa_santander_nombre_municipio <- mapa_santander[,6]

mapa_consumo_extasis_santander <- mapa_santander_nombre_municipio %>%
  left_join(consumo_extasis_por_municipio_santander, by = c("nombre_mpi" = "municipios")) 

ggplot(data = mapa_consumo_extasis_santander) +
  geom_sf(aes(fill = consumo_total)) +
  scale_fill_viridis(option = "plasma", na.value = "grey") +
  theme_minimal() +
  labs(title = "Consumo de extasis Santander",
       fill = "Consumo")
