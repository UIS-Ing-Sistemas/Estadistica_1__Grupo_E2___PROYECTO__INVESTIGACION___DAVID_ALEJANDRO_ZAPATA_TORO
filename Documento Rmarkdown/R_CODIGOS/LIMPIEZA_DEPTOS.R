library(readr)

basuco <- read_csv("datos1_filtrado_basuco.csv")
cocaina <- read_csv("datos1_filtrado_cocaina.csv")
extasis <- read_csv("datos1_filtrado_extasis.csv")
heroina <- read_csv("datos1_filtrado_heroina.csv")
marihuana <- read_csv("datos1_filtrado_marihuana.csv")


#LIMPIEZA BASUCO

basuco<-basuco[c("DIRECTORIO","M_01", "M_02", "Depmuni", "ESTRATO", "grupo","D_01","D_02","D_08","D2_01","D2_05", "D2_06","D2_07","SEXO", "EDAD", "PARENTESCO")]
write.csv(basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_basuco.csv", row.names = FALSE)

cocaina<-cocaina[c("DIRECTORIO", "L_01", "L_02", "Depmuni", "ESTRATO", "grupo","D_01","D_02","D_08","D2_01","D2_05", "D2_06","D2_07","SEXO", "EDAD", "PARENTESCO")]
write.csv(cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_cocaina.csv", row.names = FALSE)

extasis<-extasis[c("DIRECTORIO", "N_01", "N_02", "Depmuni", "ESTRATO", "grupo","D_01","D_02","D_08","D2_01","D2_05", "D2_06","D2_07","SEXO", "EDAD", "PARENTESCO")]
write.csv(extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_extasis.csv", row.names = FALSE)

heroina<-heroina[c("DIRECTORIO", "O_01", "O_02", "Depmuni", "ESTRATO", "grupo","D_01","D_02","D_08","D2_01","D2_05", "D2_06","D2_07","SEXO", "EDAD", "PARENTESCO")]
write.csv(heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_heroina.csv", row.names = FALSE)

marihuana<-marihuana[c("DIRECTORIO", "K_02", "K_03", "Depmuni", "ESTRATO", "grupo","D_01","D_02","D_08","D2_01","D2_05", "D2_06","D2_07","SEXO", "EDAD", "PARENTESCO")]
write.csv(marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_marihuana.csv", row.names = FALSE)
