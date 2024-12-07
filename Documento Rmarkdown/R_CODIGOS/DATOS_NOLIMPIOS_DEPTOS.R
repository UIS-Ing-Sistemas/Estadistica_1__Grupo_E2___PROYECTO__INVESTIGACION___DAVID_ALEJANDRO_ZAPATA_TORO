library(readr)

#IMPORTAR .csv NECESARIOS PARA EL FILTRADO
amazonas <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS", pattern = "\\.csv$", full.names = TRUE)
arauca <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA", pattern = "\\.csv$", full.names = TRUE)
antiouia <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA", pattern = "\\.csv$", full.names = TRUE)
atlantico <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO", pattern = "\\.csv$", full.names = TRUE)
bogota <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA", pattern = "\\.csv$", full.names = TRUE)
bolivar <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR", pattern = "\\.csv$", full.names = TRUE)
boyaca <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA", pattern = "\\.csv$", full.names = TRUE)
caldas <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS", pattern = "\\.csv$", full.names = TRUE)
caueta <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA", pattern = "\\.csv$", full.names = TRUE)
casanare <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE", pattern = "\\.csv$", full.names = TRUE)
cauca <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA", pattern = "\\.csv$", full.names = TRUE)
cesar <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR", pattern = "\\.csv$", full.names = TRUE)
choco <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO", pattern = "\\.csv$", full.names = TRUE)
cordoba <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA", pattern = "\\.csv$", full.names = TRUE)
cundinamarca <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA", pattern = "\\.csv$", full.names = TRUE)
guania <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA", pattern = "\\.csv$", full.names = TRUE)
guaviare <- list.files(path = "C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE", pattern = "\\.csv$", full.names = TRUE)
filtrado_personas <- read_csv("ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/filtrado_personas.csv")

#TRABAJO POR DEPARTAMENTO
for (archivo in amazonas) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/AMAZONAS", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in antiouia) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ANTIOQUIA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in arauca) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ARAUCA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in atlantico) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/ATLANTICO", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in bogota) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOGOTA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in bolivar) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOLIVAR", nuevo_nombre), 
            row.names = FALSE)
}


for (archivo in boyaca) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/BOYACA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in caldas) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CALDAS", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in casanare) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CASANARE", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in cauca) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAUCA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in caueta) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CAQUETA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in cesar) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CESAR", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in choco) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CHOCO", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in cordoba) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CORDOBA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in cundinamarca) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/CUNDINAMARCA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in guania) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUANIA", nuevo_nombre), 
            row.names = FALSE)
}

for (archivo in guaviare) {
  datos <- read.csv(archivo, stringsAsFactors = FALSE)
  filtrados<-merge(datos, filtrado_personas, by="DIRECTORIO")
  nuevo_nombre <- paste0("datos1_", basename(archivo))
  write.csv(filtrados, 
            file = file.path("C:/Users/USUARIO/Documents/ESTADISTICA/PROY_FILTER/DEPARTAMENTOS/GUAVIARE", nuevo_nombre), 
            row.names = FALSE)
}

