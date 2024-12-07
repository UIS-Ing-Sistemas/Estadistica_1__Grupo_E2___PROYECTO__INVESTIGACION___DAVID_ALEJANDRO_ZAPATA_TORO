library(readr)

#Lectura archivo encuestas
encuestas <- read_csv("DATOS DANE/Microdatos/encuestas/encuestas.csv")

#Reconocimiento codigos departamentos
encuestas$grupo <- substr(encuestas$Depmuni, 1, 2)
Base_municipios<- split(encuestas, encuestas$grupo)

#Escritura .csv por codigo de departamento
for (codigo_grupo in names(Base_municipios)) {
  # Crear un nombre de archivo único
  nombre_archivo <- paste0("grupo_", codigo_grupo, ".csv")
  write.csv(Base_municipios[[codigo_grupo]], file = nombre_archivo, row.names = FALSE)
}



