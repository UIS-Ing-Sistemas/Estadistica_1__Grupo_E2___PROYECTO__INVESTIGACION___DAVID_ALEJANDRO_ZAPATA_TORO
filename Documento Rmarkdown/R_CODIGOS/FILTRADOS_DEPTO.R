library(readr)

#IMPORTAR .csv NECESARIOS PARA EL FILTRADO
amazonas_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS/grupo_41.csv")
antiouia_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA/grupo_05.csv")
arauca_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA/grupo_81.csv")
atlantico_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO/grupo_08.csv")
bogota_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA/grupo_11.csv")
bolivar_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR/grupo_13.csv")
boyaca_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA/grupo_15.csv")
caldas_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS/grupo_17.csv")
caueta_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA/grupo_18.csv")
casanare_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE/grupo_85.csv")
cauca_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA/grupo_19.csv")
cesar_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR/grupo_20.csv")
choco_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO/grupo_27.csv")
cordoba_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/grupo_23.csv")
cundinamarca_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA/grupo_25.csv")
guania<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA/grupo_94.csv")
guaviare_base<- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE/grupo_95.csv")
basuco_base <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/m_capitulos/m_capitulos.csv")
heroina_base <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/o_capitulos/o_capitulos.csv")
marihuana_base <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/k_capitulos/k_capitulos.csv")
cocaina_base <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/l_capitulos/l_capitulos.csv")
extasis_base <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/n_capitulos/n_capitulos.csv")
personas1 <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/d_capitulos/d_capitulos.csv")
personas2 <- read_csv("Estadistica_1__Grupo_E2___PROYECTO__INVESTIGACION___DAVID_ALEJANDRO_ZAPATA_TORO/DATOS DANE/Microdatos/d2_capitulos/d2_capitulos.csv")

#SUSTANCIAS POR DEPARTAMENTO
#CONSUMIDORES BASUCO
filtrado_basuco<-merge(basuco_base, amazonas_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, antiouia_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, arauca_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, atlantico_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, bogota_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, bolivar_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, boyaca_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, caldas_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, caueta_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, casanare_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, cauca_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, cesar_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, choco_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, cordoba_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, cundinamarca_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, guania, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA/filtrado_basuco.csv", row.names = FALSE)

filtrado_basuco<-merge(basuco_base, guaviare_base, by="DIRECTORIO")
write.csv(filtrado_basuco, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE/filtrado_basuco.csv", row.names = FALSE)
View(filtrado_basuco)

#CONSUMIDORES EXTASIS
filtrado_extasis<-merge(extasis_base, amazonas_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, antiouia_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, arauca_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, atlantico_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, bogota_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, bolivar_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, boyaca_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, caldas_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, caueta_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, casanare_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, cauca_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, cesar_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, choco_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, cordoba_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, cundinamarca_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, guania, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA/filtrado_extasis.csv", row.names = FALSE)

filtrado_extasis<-merge(extasis_base, guaviare_base, by="DIRECTORIO")
write.csv(filtrado_extasis, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE/filtrado_extasis.csv", row.names = FALSE)
View(filtrado_extasis)

#CONSUMIDORES COCAINA
filtrado_cocaina<-merge(cocaina_base, amazonas_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, antiouia_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, arauca_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, atlantico_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, bogota_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, bolivar_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, boyaca_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, caldas_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, caueta_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, casanare_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, cauca_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, cesar_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, choco_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, cordoba_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, cundinamarca_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, guania, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA/filtrado_cocaina.csv", row.names = FALSE)

filtrado_cocaina<-merge(cocaina_base, guaviare_base, by="DIRECTORIO")
write.csv(filtrado_cocaina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE/filtrado_cocaina.csv", row.names = FALSE)
View(filtrado_cocaina)

#CONSUMIDORES HEROINA
filtrado_heroina<-merge(heroina_base, amazonas_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, antiouia_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, arauca_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, atlantico_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, bogota_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, bolivar_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, boyaca_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, caldas_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, caueta_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, casanare_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, cauca_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, cesar_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, choco_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, cordoba_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, cundinamarca_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, guania, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA/filtrado_heroina.csv", row.names = FALSE)

filtrado_heroina<-merge(heroina_base, guaviare_base, by="DIRECTORIO")
write.csv(filtrado_heroina, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE/filtrado_heroina.csv", row.names = FALSE)
View(filtrado_heroina)

#CONSUMIDORES MARIHUANA
filtrado_marihuana<-merge(marihuana_base, amazonas_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, antiouia_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, arauca_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, atlantico_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, bogota_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, bolivar_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, boyaca_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, caldas_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, caueta_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, casanare_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, cauca_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, cesar_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, choco_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, cordoba_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, cundinamarca_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, guania, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA/filtrado_marihuana.csv", row.names = FALSE)

filtrado_marihuana<-merge(marihuana_base, guaviare_base, by="DIRECTORIO")
write.csv(filtrado_marihuana, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE/filtrado_marihuana.csv", row.names = FALSE)
View(filtrado_marihuana)

#Concatenar datos relevantes de las personas
filtrado_personas<-merge(personas1, personas2, by="DIRECTORIO")
write.csv(filtrado_personas, "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/filtrado_personas.csv", row.names = FALSE)
View(filtrado_personas)
