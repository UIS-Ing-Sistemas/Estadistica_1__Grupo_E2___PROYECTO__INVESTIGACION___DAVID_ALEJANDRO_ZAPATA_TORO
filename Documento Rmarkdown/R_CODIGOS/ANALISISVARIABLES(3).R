reporte_raizal<- function(data, columna, valores, etiquetas, nombre_consumo, departamento, titulo_grafico) {
  cuentas <- c()
  
  for (i in seq_along(valores)) {
    valor <- valores[i]
    cuenta <- sum(data[[columna]] == valor)
    cuentas <- c(cuentas, cuenta)
    
    cat(sprintf(
      "Personas que consumen %s y pertenecen al grupo %s en %s: %s\n", 
      nombre_consumo, etiquetas[i], departamento, cuenta
    ))
  }
  
  # Generar el gráfico
  barplot(
    cuentas,
    names.arg = etiquetas,
    col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409", "#58a92e", "#367c1a"),
    main = sprintf("%s en %s", titulo_grafico, departamento),
    xlab = "Grupo Raizal",
    ylab = "Número de Personas",
    ylim = c(0, max(cuentas) + 5)
  )
}

#ANTIOUIA
reporte_raizal(
  data = antiouia_basuco,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "basuco",
  departamento = "Antioquia",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de basuco"
)

reporte_raizal(
  data = antiouia_cocaina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "cocaina",
  departamento = "Antioquia",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de cocaina"
)

reporte_raizal(
  data = antiouia_extasis,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "extasis",
  departamento = "Antioquia",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de extasis"
)

reporte_raizal(
  data = antiouia_heroina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "heroina",
  departamento = "Antioquia",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de heroina"
)

reporte_raizal(
  data = antiouia_marihuana,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "marihuana",
  departamento = "Antioquia",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de marihuana"
)

#BOGOTA D.C

reporte_raizal(
  data = bogota_basuco,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "basuco",
  departamento = "Bogotá D. C",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de basuco"
)

reporte_raizal(
  data = bogota_cocaina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "cocaina",
  departamento = "Bogotá D. C",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de cocaina"
)

reporte_raizal(
  data = bogota_extasis,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "extasis",
  departamento = "Bogotá D. C",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de extasis"
)

reporte_raizal(
  data = bogota_heroina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "heroina",
  departamento = "Bogotá D. C",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de heroina"
)

reporte_raizal(
  data = bogota_marihuana,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "marihuana",
  departamento = "Bogotá D. C",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de marihuana"
)

#SANTANDER
reporte_raizal(
  data = santander_basuco,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "basuco",
  departamento = "Santander ",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de basuco"
)

reporte_raizal(
  data = santander_cocaina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "cocaina",
  departamento = "Santander ",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de cocaina"
)

reporte_raizal(
  data = santander_extasis,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "extasis",
  departamento = "Santander ",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de extasis"
)

reporte_raizal(
  data = santander_heroina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "heroina",
  departamento = "Santander ",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de heroina"
)

reporte_raizal(
  data = santander_marihuana,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "marihuana",
  departamento = "Santander ",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de marihuana"
)

#VALLE DEL CAUCA
reporte_raizal(
  data = valle_basuco,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "basuco",
  departamento = "Valle del Cauca",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de basuco"
)

reporte_raizal(
  data = valle_cocaina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "cocaina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de cocaina"
)

reporte_raizal(
  data = valle_extasis,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "extasis",
  departamento = "Valle del Cauca",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de extasis"
)

reporte_raizal(
  data = valle_heroina,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "heroina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de heroina"
)

reporte_raizal(
  data = valle_marihuana,
  columna = "D2_01",
  valores = c("1", "2", "3", "4", "5", "9"),
  etiquetas = c("Indígena", "Gitano / ROM", "Raizal Isleño", "Palanquero de San Basilio", "Negro o afrocolombiano", "Ninguno de los anteriores"),
  nombre_consumo = "marihuana",
  departamento = "Valle del Cauca",
  titulo_grafico = "Pertenencia a culturas raizales y palenqueras del consumidor de marihuana"
)

##NIVEL EDUCATIVO 
reporte_neducativo<- function(data, columna, valores, etiquetas, nombre_consumo, departamento, titulo_grafico) {
  cuentas <- c()
  
  for (i in seq_along(valores)) {
    valor <- valores[i]
    cuenta <- sum(data[[columna]] == valor)
    cuentas <- c(cuentas, cuenta)
    
    cat(sprintf(
      "Personas que consumen %s y tienen nivel educativo %s en %s: %s\n", 
      nombre_consumo, etiquetas[i], departamento, cuenta
    ))
  }
  
  # Generar el gráfico
  barplot(
    cuentas,
    names.arg = etiquetas,
    col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409", "#58a92e", "#367c1a", "#c9ecaf", "#367c1a", "#58a92e"),
    main = sprintf("%s en %s", titulo_grafico, departamento),
    xlab = "Nivel Educativo",
    ylab = "Número de Personas",
    ylim = c(0, max(cuentas) + 5)
  )
}


#ANTIOUIA
reporte_neducativo(
  data = antiouia_basuco,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "basuco",
  departamento = "Antioquia",
  titulo_grafico = "Nivel educativo del consumidor de basuco"
)

reporte_neducativo(
  data = antiouia_cocaina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "cocaina",
  departamento = "Antioquia",
  titulo_grafico = "Nivel educativo del consumidor de cocaina"
)

reporte_neducativo(
  data = antiouia_extasis,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "extasis",
  departamento = "Antioquia",
  titulo_grafico = "Nivel educativo del consumidor de extasis"
)

reporte_neducativo(
  data = antiouia_heroina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "heroina",
  departamento = "Antioquia",
  titulo_grafico = "Nivel educativo del consumidor de heroina"
)

reporte_neducativo(
  data = antiouia_marihuana,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "marihuana",
  departamento = "Antioquia",
  titulo_grafico = "Nivel educativo del consumidor de marihuana"
)


#BOGOTA
reporte_neducativo(
  data = bogota_basuco,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "basuco",
  departamento = "Bogota D. C",
  titulo_grafico = "Nivel educativo del consumidor de basuco"
)

reporte_neducativo(
  data = bogota_cocaina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "cocaina",
  departamento = "Bogota D. C",
  titulo_grafico = "Nivel educativo del consumidor de cocaina"
)

reporte_neducativo(
  data = bogota_extasis,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "extasis",
  departamento = "Bogota D. C",
  titulo_grafico = "Nivel educativo del consumidor de extasis"
)

reporte_neducativo(
  data = bogota_heroina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "heroina",
  departamento = "Bogota D. C",
  titulo_grafico = "Nivel educativo del consumidor de heroina"
)

reporte_neducativo(
  data = bogota_marihuana,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "marihuana",
  departamento = "Bogota D. C",
  titulo_grafico = "Nivel educativo del consumidor de marihuana"
)


#SANTANDER
reporte_neducativo(
  data = santander_basuco,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "basuco",
  departamento = "Santander",
  titulo_grafico = "Nivel educativo del consumidor de basuco"
)

reporte_neducativo(
  data = santander_cocaina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "cocaina",
  departamento = "Santander",
  titulo_grafico = "Nivel educativo del consumidor de cocaina"
)

reporte_neducativo(
  data = santander_extasis,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "extasis",
  departamento = "Santander",
  titulo_grafico = "Nivel educativo del consumidor de extasis"
)

reporte_neducativo(
  data = santander_heroina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "heroina",
  departamento = "Santander",
  titulo_grafico = "Nivel educativo del consumidor de heroina"
)

reporte_neducativo(
  data = santander_marihuana,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "marihuana",
  departamento = "Santander",
  titulo_grafico = "Nivel educativo del consumidor de marihuana"
)


#VALLE DEL CAUCA
reporte_neducativo(
  data = valle_basuco,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "basuco",
  departamento = "Valle del Cauca",
  titulo_grafico = "Nivel educativo del consumidor de basuco"
)

reporte_neducativo(
  data = valle_cocaina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "cocaina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Nivel educativo del consumidor de cocaina"
)

reporte_neducativo(
  data = valle_extasis,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "extasis",
  departamento = "Valle del Cauca",
  titulo_grafico = "Nivel educativo del consumidor de extasis"
)

reporte_neducativo(
  data = valle_heroina,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "heroina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Nivel educativo del consumidor de heroina"
)

reporte_neducativo(
  data = valle_marihuana,
  columna = "D2_05",
  valores = c("1", "2", "3", "4", "5","6", "7", "8", "9"),
  etiquetas = c("Ninguno", "Preescolar", "Basica Primaria", "Basica Secuandaria", "Media", "Técnica/Tecnologica", "Universitaria", "Postgrado", "No sabe/informa"),
  nombre_consumo = "marihuana",
  departamento = "Valle del Cauca",
  titulo_grafico = "Nivel educativo del consumidor de marihuana"
)


#ORIENTACIÓN SEXUAL
reporte_orientacion<- function(data, columna, valores, etiquetas, nombre_consumo, departamento, titulo_grafico) {
  cuentas <- c()
  
  for (i in seq_along(valores)) {
    valor <- valores[i]
    cuenta <- sum(data[[columna]] == valor, na.rm = TRUE)
    cuentas <- c(cuentas, cuenta)
    
    cat(sprintf(
      "Personas que consumen %s y su orientación sexual es %s en %s: %s\n", 
      nombre_consumo, etiquetas[i], departamento, cuenta
    ))
  }
  
  # Generar el gráfico
  barplot(
    cuentas,
    names.arg = etiquetas,
    col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
    main = sprintf("%s en %s", titulo_grafico, departamento),
    xlab = "Orientación Sexual",
    ylab = "Número de Personas",
    ylim = c(0, max(cuentas) + 5)
  )
}

#ANTIOUIA
reporte_orientacion(
  data = antiouia_basuco,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "basuco",
  departamento = "Antioquia",
  titulo_grafico = "Orientación Sexual del consumidor de basuco"
)

reporte_orientacion(
  data = antiouia_cocaina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "cocaina",
  departamento = "Antioquia",
  titulo_grafico = "Orientación Sexual del consumidor de cocaina"
)

reporte_orientacion(
  data = antiouia_extasis,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "extasis",
  departamento = "Antioquia",
  titulo_grafico = "Orientación Sexual del consumidor de extasis"
)

reporte_orientacion(
  data = antiouia_heroina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "heroina",
  departamento = "Antioquia",
  titulo_grafico = "Orientación Sexual del consumidor de heroina"
)

reporte_orientacion(
  data = antiouia_marihuana,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "marihuana",
  departamento = "Antioquia",
  titulo_grafico = "Orientación Sexual del consumidor de marihuana"
)


#BOGOTA
reporte_orientacion(
  data = bogota_basuco,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "basuco",
  departamento = "Bogota D. C",
  titulo_grafico = "Orientación Sexual del consumidor de basuco"
)

reporte_orientacion(
  data = bogota_cocaina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "cocaina",
  departamento = "Bogota D. C",
  titulo_grafico = "Orientación Sexual del consumidor de cocaina"
)

reporte_orientacion(
  data = bogota_extasis,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "extasis",
  departamento = "Bogota D. C",
  titulo_grafico = "Orientación Sexual del consumidor de extasis"
)

reporte_orientacion(
  data = bogota_heroina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "heroina",
  departamento = "Bogota D. C",
  titulo_grafico = "Orientación Sexual del consumidor de heroina"
)

reporte_orientacion(
  data = bogota_marihuana,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "marihuana",
  departamento = "Bogota D. C",
  titulo_grafico = "Orientación Sexual del consumidor de marihuana"
)


#SANTANDER
reporte_orientacion(
  data = santander_basuco,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "basuco",
  departamento = "Santander",
  titulo_grafico = "Orientación Sexual del consumidor de basuco"
)

reporte_orientacion(
  data = santander_cocaina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "cocaina",
  departamento = "Santander",
  titulo_grafico = "Orientación Sexual del consumidor de cocaina"
)

reporte_orientacion(
  data = santander_extasis,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "extasis",
  departamento = "Santander",
  titulo_grafico = "Orientación Sexual del consumidor de extasis"
)

reporte_orientacion(
  data = santander_heroina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "heroina",
  departamento = "Santander",
  titulo_grafico = "Orientación Sexual del consumidor de heroina"
)

reporte_orientacion(
  data = santander_marihuana,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "marihuana",
  departamento = "Santander",
  titulo_grafico = "Orientación Sexual del consumidor de marihuana"
)


#VALLE DEL CAUCA
reporte_orientacion(
  data = valle_basuco,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "basuco",
  departamento = "Valle del Cauca",
  titulo_grafico = "Orientación Sexual del consumidor de basuco"
)

reporte_orientacion(
  data = valle_cocaina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "cocaina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Orientación Sexual del consumidor de cocaina"
)

reporte_orientacion(
  data = valle_extasis,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "extasis",
  departamento = "Valle del Cauca",
  titulo_grafico = "Orientación Sexual del consumidor de extasis"
)

reporte_orientacion(
  data = valle_heroina,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "heroina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Orientación Sexual del consumidor de heroina"
)

reporte_orientacion(
  data = valle_marihuana,
  columna = "D2_06",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Heterosexual", "Homosexual", "Bisexual", "Otra"),
  nombre_consumo = "marihuana",
  departamento = "Valle del Cauca",
  titulo_grafico = "Orientación Sexual del consumidor de marihuana"
)

#IDENTIDAD DE GENERO
reporte_identidad<- function(data, columna, valores, etiquetas, nombre_consumo, departamento, titulo_grafico) {
  cuentas <- c()
  
  for (i in seq_along(valores)) {
    valor <- valores[i]
    cuenta <- sum(data[[columna]] == valor, na.rm = TRUE)
    cuentas <- c(cuentas, cuenta)
    
    cat(sprintf(
      "Personas que consumen %s y su identidad de género es %s en %s: %s\n", 
      nombre_consumo, etiquetas[i], departamento, cuenta
    ))
  }
  
  # Generar el gráfico
  barplot(
    cuentas,
    names.arg = etiquetas,
    col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
    main = sprintf("%s en %s", titulo_grafico, departamento),
    xlab = "Identidad de Género",
    ylab = "Número de Personas",
    ylim = c(0, max(cuentas) + 5)
  )
}
#ANTIOUIA
reporte_identidad(
  data = antiouia_basuco,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "basuco",
  departamento = "Antioquia",
  titulo_grafico = "Identidad de Género del consumidor de basuco"
)

reporte_identidad(
  data = antiouia_cocaina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "cocaina",
  departamento = "Antioquia",
  titulo_grafico = "Identidad de Género del consumidor de cocaina"
)

reporte_identidad(
  data = antiouia_extasis,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "extasis",
  departamento = "Antioquia",
  titulo_grafico = "Identidad de Género del consumidor de extasis"
)

reporte_identidad(
  data = antiouia_heroina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "heroina",
  departamento = "Antioquia",
  titulo_grafico = "Identidad de Género del consumidor de heroina"
)

reporte_identidad(
  data = antiouia_marihuana,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "marihuana",
  departamento = "Antioquia",
  titulo_grafico = "Identidad de Género del consumidor de marihuana"
)


#BOGOTA
reporte_identidad(
  data = bogota_basuco,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "basuco",
  departamento = "Bogota D. C",
  titulo_grafico = "Identidad de Género del consumidor de basuco"
)

reporte_identidad(
  data = bogota_cocaina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "cocaina",
  departamento = "Bogota D. C",
  titulo_grafico = "Identidad de Género del consumidor de cocaina"
)

reporte_identidad(
  data = bogota_extasis,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "extasis",
  departamento = "Bogota D. C",
  titulo_grafico = "Identidad de Género del consumidor de extasis"
)

reporte_identidad(
  data = bogota_heroina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "heroina",
  departamento = "Bogota D. C",
  titulo_grafico = "Identidad de Género del consumidor de heroina"
)

reporte_identidad(
  data = bogota_marihuana,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "marihuana",
  departamento = "Bogota D. C",
  titulo_grafico = "Identidad de Género del consumidor de marihuana"
)


#SANTANDER
reporte_identidad(
  data = santander_basuco,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "basuco",
  departamento = "Santander",
  titulo_grafico = "Identidad de Género del consumidor de basuco"
)

reporte_identidad(
  data = santander_cocaina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "cocaina",
  departamento = "Santander",
  titulo_grafico = "Identidad de Género del consumidor de cocaina"
)

reporte_identidad(
  data = santander_extasis,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "extasis",
  departamento = "Santander",
  titulo_grafico = "Identidad de Género del consumidor de extasis"
)

reporte_identidad(
  data = santander_heroina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "heroina",
  departamento = "Santander",
  titulo_grafico = "Identidad de Género del consumidor de heroina"
)

reporte_identidad(
  data = santander_marihuana,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "marihuana",
  departamento = "Santander",
  titulo_grafico = "Identidad de Género del consumidor de marihuana"
)


#VALLE DEL CAUCA
reporte_identidad(
  data = valle_basuco,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "basuco",
  departamento = "Valle del Cauca",
  titulo_grafico = "Identidad de Género del consumidor de basuco"
)

reporte_identidad(
  data = valle_cocaina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "cocaina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Identidad de Género del consumidor de cocaina"
)

reporte_identidad(
  data = valle_extasis,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "extasis",
  departamento = "Valle del Cauca",
  titulo_grafico = "Identidad de Género del consumidor de extasis"
)

reporte_identidad(
  data = valle_heroina,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "heroina",
  departamento = "Valle del Cauca",
  titulo_grafico = "Identidad de Género del consumidor de heroina"
)

reporte_identidad(
  data = valle_marihuana,
  columna = "D2_07",
  valores = c("1", "2", "3", "4"),
  etiquetas = c("Masculino", "Femenino", "Transgenero", "Otro"),
  nombre_consumo = "marihuana",
  departamento = "Valle del Cauca",
  titulo_grafico = "Identidad de Género del consumidor de marihuana"
)


