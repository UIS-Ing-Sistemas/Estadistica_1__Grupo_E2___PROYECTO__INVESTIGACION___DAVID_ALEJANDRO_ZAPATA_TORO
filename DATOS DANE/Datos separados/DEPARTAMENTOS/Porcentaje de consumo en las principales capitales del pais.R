total_colombia <- nrow(consumidores_total_colombia)
total_santander <- nrow(consumidores_santander)
total_bogota <- nrow(datos1_grupo_11)
total_antioquia <- nrow(datos1_grupo_05)
total_v_cauca <- nrow(consumidores_valle_del_cauca)

##### PROCENTAJE DE CONSUMO EN SANTANDER #####
santander <- (total_santander/total_colombia)*100
print(santander)

##### PROCENTAJE DE CONSUMO EN ANTIOQUIA #####
antioquia <- (total_antioquia/total_colombia)*100
print(antioquia)

##### PROCENTAJE DE CONSUMO EN BOGOTA #####
bogota <- (total_bogota/total_colombia)*100
print(bogota)

##### PROCENTAJE DE CONSUMO EN VALLE DEL CAUCA #####
v_cauca <- (total_v_cauca/total_colombia)*100
print(v_cauca)
