analizar_edades <- function(data, columna, nombre_variable = "Variable", intervalos_breaks = NULL) {
  if (!columna %in% names(data)) {
    stop(sprintf("La columna '%s' no existe en el dataset.", columna))
  }
  
  edades <- as.numeric(data[[columna]])
  if (any(is.na(edades))) {
    cat("Aviso: Se encontraron valores NA, que serán excluidos del análisis.\n")
  }
  edades <- edades[!is.na(edades)]
  
  #Se indican los intervalos
  intervalos_breaks = c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110)
  
  #Se calculan las medidas generales
  media_general <- mean(edades)
  mediana_general <- median(edades)
  desviacion_general <- sd(edades)
  
  # Función para calcular la moda
  calcular_moda <- function(x) {
    uniq_x <- unique(x)
    uniq_x[which.max(tabulate(match(x, uniq_x)))]
  }
  moda_general <- calcular_moda(edades)
  
  # Imprimir estadísticas generales
  cat(sprintf("Análisis de %s\n", nombre_variable))
  cat(sprintf("Media: %.2f\n", media_general))
  cat(sprintf("Mediana: %.2f\n", mediana_general))
  cat(sprintf("Moda: %d\n", moda_general))
  cat(sprintf("Desviación Estándar: %.2f\n\n", desviacion_general))
  
  
  # Crear intervalos
  intervalos <- cut(
    edades, 
    breaks = intervalos_breaks, 
    right = FALSE, 
    labels = paste(head(intervalos_breaks, -1), tail(intervalos_breaks, -1) - 1, sep = "-")
  )
  
  # Tabla de frecuencias
  tabla_frecuencias <- table(intervalos)
  
  # Visualizaciones 3 graficos
  par(mfrow = c(1, 3))
  
  # Histograma
  hist(edades, 
       breaks = intervalos_breaks, 
       right = FALSE, 
       col = "darkgreen", 
       main = paste("Distribución de", nombre_variable), 
       xlab = "Intervalos de Edad", 
       ylab = "Frecuencia")
  
  # Diagrama de barras
  barplot(tabla_frecuencias, 
          col = "lightgreen", 
          main = paste("Frecuencia de", nombre_variable), 
          xlab = "Intervalos de Edad", 
          ylab = "Frecuencia")
  
  # Boxplot
  boxplot(edades, 
          main = paste("Boxplot de", nombre_variable), 
          ylab = "Edades", 
          col = "#028a0f", 
          horizontal = FALSE)
  abline(h = mediana_general, col = "#64c27b", lwd = 2, lty = 2)  # Línea de la mediana en azul
  abline(h = media_general, col = "#203500", lwd = 2, lty = 2)  # Línea de la media en rojo
  text(x = 1, y = moda_general, labels = paste("Moda:", moda_general), pos = 4, col = "#203500", cex = 1.2)
  
}



#ANTIOUIA
resultados <- analizar_edades(
  data = antiouia_basuco,
  columna = "EDAD", 
  nombre_variable = "Edades consumo basuco Antioquia"  
)

####
resultados <- analizar_edades(
  data = antiouia_cocaina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo cocaina Antioquia"  
)

####
resultados <- analizar_edades(
  data = antiouia_extasis,
  columna = "EDAD", 
  nombre_variable = "Edades consumo extasisAntioquias"  
)

###
resultados <- analizar_edades(
  data = antiouia_heroina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo heroina Antioquia"  
)

##
resultados <- analizar_edades(
  data = antiouia_marihuana,
  columna = "EDAD", 
  nombre_variable = "Edades consumo marihuana Antioquia"  
)

#######################
#BOGOTA D. C
###
resultados <- analizar_edades(
  data = bogota_basuco,
  columna = "EDAD", 
  nombre_variable = "Edades consumo basuco Bogota D. C"  
)

####
resultados <- analizar_edades(
  data = bogota_cocaina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo cocaina Bogota D. C"  
)

####
resultados <- analizar_edades(
  data = bogota_extasis,
  columna = "EDAD", 
  nombre_variable = "Edades consumo extasisBogota D. Cs"  
)

###
resultados <- analizar_edades(
  data = bogota_heroina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo heroina Bogota D. C"  
)

##
resultados <- analizar_edades(
  data = bogota_marihuana,
  columna = "EDAD", 
  nombre_variable = "Edades consumo marihuana Bogota D. C"  
)

########################
#SANTANDER
###
resultados <- analizar_edades(
  data = santander_basuco,
  columna = "EDAD", 
  nombre_variable = "Edades consumo basuco Santander "  
)

####
resultados <- analizar_edades(
  data = santander_cocaina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo cocaina Santander "  
)

####
resultados <- analizar_edades(
  data = santander_extasis,
  columna = "EDAD", 
  nombre_variable = "Edades consumo extasisSantander s"  
)

###
resultados <- analizar_edades(
  data = santander_heroina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo heroina Santander "  
)

##
resultados <- analizar_edades(
  data = santander_marihuana,
  columna = "EDAD", 
  nombre_variable = "Edades consumo marihuana Santander "  
)


######################
#VALLE DEL CAUCA

###
resultados <- analizar_edades(
  data = valle_basuco,
  columna = "EDAD", 
  nombre_variable = "Edades consumo basuco Valle del Cauca"  
)

####
resultados <- analizar_edades(
  data = valle_cocaina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo cocaina Valle del Cauca"  
)

####
resultados <- analizar_edades(
  data = valle_extasis,
  columna = "EDAD", 
  nombre_variable = "Edades consumo extasis Valle del Caucas"  
)

###
resultados <- analizar_edades(
  data = valle_heroina,
  columna = "EDAD", 
  nombre_variable = "Edades consumo heroina Valle del Cauca"  
)

##
resultados <- analizar_edades(
  data = valle_marihuana,
  columna = "EDAD", 
  nombre_variable = "Edades consumo marihuana Valle del Cauca"  
)
