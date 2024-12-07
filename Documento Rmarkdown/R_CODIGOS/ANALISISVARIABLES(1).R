##CONSUMO POR PRIMERA VEZ

#ANTIOUIA
#Consumo por primera vez Basuco 
columna <- "M_01"
valores<-c("1", "2", "3", "9")
etiquetas <- c(
  "Últimos 30 días",
  "Hace más de +30 días,-12 meses",
  "Hace más de 12 meses",
  "No contesta"
)

cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron basuco por primera vez en los últimos 30 días en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 30 días pero menos de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron basuco por primera vez en Antioquia: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de basuco por primera vez en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Consumo por primera vez cocaina 
columna <- "L_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron cocaina por primera vez en los últimos 30 días en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 30 días pero menos de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron cocaina por primera vez en Antioquia: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina por primera vez en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Consumo por primera vez extasis 
columna <- "N_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron extasis por primera vez en los últimos 30 días en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 30 días pero menos de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron extasis por primera vez en Antioquia: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis por primera vez en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Consumo por primera vez heroina 
columna <- "O_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron heroina por primera vez en los últimos 30 días en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 30 días pero menos de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron heroina por primera vez en Antioquia: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de heroina por primera vez en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Consumo por primera vez marihuana 
columna <- "K_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron marihuana por primera vez en los últimos 30 días en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 30 días pero menos de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron marihuana por primera vez en Antioquia: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana por primera vez en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Bogota D.C

#Concumo por primera vez Basuco 
columna <- "M_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron basuco por primera vez en los últimos 30 días en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 30 días pero menos de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron basuco por primera vez en Bogota: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de basuco por primera vez en Bogota D.C",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)


#Consumo por primera vez Cocaina 
columna <- "L_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron cocaina por primera vez en los últimos 30 días en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 30 días pero menos de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron cocaina por primera vez en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina por primera vez en Bogota",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Consumo por primera vez Extasis 
columna <- "N_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron extasis por primera vez en los últimos 30 días en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 30 días pero menos de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron extasis por primera vez en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis por primera vez en Bogota",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Consimo por primaer vez Heroina 
columna <- "O_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta) 
  if (valor == "1") {
    cat(sprintf("Personas que consumieron heroina por primera vez en los últimos 30 días en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 30 días pero menos de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron heroina por primera vez en Bogota: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de heroina por primera vez en Bogota D.C",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Consumo por primera vez Marihuana 
columna <- "K_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron marihuana por primera vez en los últimos 30 días en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 30 días pero menos de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron marihuana por primera vez en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana por primera vez en Bogota",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#SANTANDER

#Consumo por primera vez Basuco 
columna <- "M_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta) 
  if (valor == "1") {
    cat(sprintf("Personas que consumieron basuco por primera vez en los últimos 30 días en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 30 días pero menos de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron basuco por primera vez en Santander: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de basuco por primera vez en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)


#Consumo por primera vez cocaina 
columna <- "L_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron cocaina por primera vez en los últimos 30 días en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 30 días pero menos de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron cocaina por primera vez en Santander: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de cocaina por primera vez en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)


#Consumo por primera vez extasis 
columna <- "N_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron extasis por primera vez en los últimos 30 días en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 30 días pero menos de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron extasis por primera vez en Santander: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de extasis por primera vez en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Consumo por primera vez heroina 
columna <- "O_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta) 
  if (valor == "1") {
    cat(sprintf("Personas que consumieron heroina por primera vez en los últimos 30 días en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 30 días pero menos de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron heroina por primera vez en Santander: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de heroina por primera vez en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Consumo por primera vez marihuana 
columna <- "K_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron marihuana por primera vez en los últimos 30 días en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 30 días pero menos de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron marihuana por primera vez en Santander: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de marihuana por primera vez en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#VALLE DEL CAUCA

#CONSUMO POR PRIMERA VEZ 
#Basuco 
columna <- "M_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron basuco por primera vez en los últimos 30 días en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 30 días pero menos de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron basuco por primera vez hace más de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron basuco por primera vez en Valle del Cauca: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de basuco por primera vez en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)


#Cocaina 
columna <- "L_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron cocaina por primera vez en los últimos 30 días en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 30 días pero menos de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron cocaina por primera vez hace más de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron cocaina por primera vez en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina por primera vez en Valle del Cauca",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Extasis 
columna <- "N_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron extasis por primera vez en los últimos 30 días en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 30 días pero menos de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron extasis por primera vez hace más de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron extasis por primera vez en Valle del Cauca: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de extasis por primera vez en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Heroina 
columna <- "O_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron heroina por primera vez en los últimos 30 días en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 30 días pero menos de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron heroina por primera vez hace más de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron heroina por primera vez en Valle del Cauca: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Consumo de heroina por primera vez en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(-2, max(cuentas) + 10)
)

text(
  x = seq_along(cuentas),
  y = cuentas,
  labels = cuentas,
  pos = 1,
  cex = 1,
  col = "black"
)

#Marihuana 
columna <- "K_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que consumieron marihuana por primera vez en los últimos 30 días en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 30 días pero menos de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumieron marihuana por primera vez hace más de 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta cuando consumieron marihuana por primera vez en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana por primera vez en Valle del Cauca",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409")
)




#CONSUMO ULTIMOS 12 MESES

#ANTIOUIA

#Consumo en los ultimos 12 meses Basuco 
columna <- "M_02"
valores<-c("1", "2", "9")
etiquetas <- c(
  "SI",
  "NO",
  "No contesta"
)

cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido basuco en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido basuco en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido basuco en los ultimos 12 meses en Antioquia: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#265409", "#367c1a" ,"#c9ecaf"),
  main = "Consumo de basuco en los ultimos 12 meses en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Consumo en los ultimos 12 meses cocaina 
columna <- "L_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido cocaina en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido cocaina en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido cocaina en los ultimos 12 meses en Antioquia: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#265409", "#367c1a" ,"#c9ecaf"),
  main = "Consumo de cocaina en los ultimos 12 meses en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Consumo en los ultimos 12 meses extasis 
columna <- "N_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido extasis en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido extasis en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido extasis en los ultimos 12 meses en Antioquia: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis en los ultimos 12 meses en Antioquia",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)


#Consumo en los ultimos 12 meses heroina 
columna <- "O_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido heroina en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido heroina en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido heroina en los ultimos 12 meses en Antioquia: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#265409", "#367c1a" ,"#c9ecaf"),
  main = "Consumo de heroina en los ultimos 12 meses en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Consumo en los ultimos 12 meses marihuana 
columna <- "K_03"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido marihuana en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido marihuana en los últimos 12 meses en Antioquia: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido marihuana en los ultimos 12 meses en Antioquia: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana en los ultimos 12 meses en Antioquia",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Bogota D.C

#CONSUMO en los ultimos 12 meses 
#Basuco 
columna <- "M_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido basuco en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido basuco en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido basuco en los ultimos 12 meses en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco en los ultimos 12 meses en Bogota",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)



#Cocaina 
columna <- "L_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido cocaina en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido cocaina en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido cocaina en los ultimos 12 meses en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina en los ultimos 12 meses en Bogota",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Extasis 
columna <- "N_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido extasis en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido extasis en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido extasis en los ultimos 12 meses en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis en los ultimos 12 meses en Bogota",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Heroina 
columna <- "O_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido heroina en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido heroina en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido heroina en los ultimos 12 meses en Bogota: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de heroina en los ultimos 12 meses en Bogota",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Marihuana 
columna <- "K_03"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta) 
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido marihuana en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido marihuana en los últimos 12 meses en Bogota: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido marihuana en los ultimos 12 meses en Bogota: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#265409", "#367c1a" ,"#c9ecaf"),
  main = "Consumo de marihuana en los ultimos 12 meses en Bogota",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#SANTANDER

#Consumo en los ultimos 12 meses Basuco 
columna <- "M_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido basuco en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido basuco en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido basuco en los ultimos 12 meses en Santander: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco en los ultimos 12 meses en Santander",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Consumo en los ultimos 12 meses cocaina 
columna <- "L_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido cocaina en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido cocaina en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido cocaina en los ultimos 12 meses en Santander: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina en los ultimos 12 meses en Santander",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)


#Consumo en los ultimos 12 meses extasis 
columna <- "N_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido extasis en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido extasis en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido extasis en los ultimos 12 meses en Santander: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis en los ultimos 12 meses en Santander",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Consumo en los ultimos 12 meses heroina 
columna <- "O_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido heroina en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido heroina en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido  heroina en los ultimos 12 meses en Santander: %s\n", cuenta))
  }
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#265409", "#367c1a" ,"#c9ecaf"),
  main = "Consumo de heroina en los ultimos 12 meses en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Consumo en los ultimos 12 meses marihuana 
columna <- "K_03"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido marihuana en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido marihuana en los últimos 12 meses en Santander: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido marihuana en los ultimos 12 meses en Santander: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana en los ultimos 12 meses en Santander",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#VALLE DEL CAUCA

#CONSUMO en los ultimos 12 meses 
#Basuco 
columna <- "M_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido basuco en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido basuco en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido basuco en los ultimos 12 meses en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco en los ultimos 12 meses en Valle del Cauca",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)


#Cocaina 
columna <- "L_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido cocaina en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido cocaina en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido cocaina en los ultimos 12 meses en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina en los ultimos 12 meses en Valle del Cauca",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Extasis 
columna <- "N_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido extasis en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido extasis en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si consumido extasis consumido en los ultimos 12 meses en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis en los ultimos 12 meses en Valle del Cauca",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Heroina 
columna <- "O_02"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido heroina en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido heroina en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido heroina en los ultimos 12 meses en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de heroina en los ultimos 12 meses en Valle del Cauca",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)

#Marihuana 
columna <- "K_03"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta) 
  if (valor == "1") {
    cat(sprintf("Personas que si han consumido marihuana en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no han consumido marihuana en los últimos 12 meses en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "9") {
    cat(sprintf("Personas que no contesta si han consumido marihuana en los ultimos 12 meses en Valle del Cauca: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana en los ultimos 12 meses en Valle del Cauca",
  col = c("#265409", "#367c1a" ,"#c9ecaf")
)



#ANTIOUIA

#Consumo y aporte al hogar Basuco 
columna <- "D_01"
valores<-c("1", "2")
etiquetas <- c(
  "SI",
  "NO"
)

cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco y aporte al hogar en Antioquia",
  col = c("#367c1a", "#c9ecaf")
)

#Consumo y aporte al hogar cocaina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina y aporte al hogar en Antioquia",
  col = c("#367c1a", "#c9ecaf")
)

#Consumo y aporte al hogar extasis 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis y aporte al hogar en Antioquia",
  col = c("#367c1a", "#c9ecaf")
)


#Consumo y aporte al hogar heroina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de heroina y aporte al hogar en Antioquia",
  col = c("#367c1a", "#c9ecaf")
)

#Consumo y aporte al hogar marihuana 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana y aporte al hogar en Antioquia",
  col = c("#367c1a", "#c9ecaf")
)

#Bogota D.C

#Consumo y aporte al hogar 
#Basuco 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco y aporte al hogar en Bogota",
  col = c("#367c1a", "#c9ecaf")
)



#Cocaina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina y aporte al hogar en Bogota",
  col = c("#367c1a", "#c9ecaf")
)

#Extasis 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis y aporte al hogar en Bogota",
  col = c("#367c1a", "#c9ecaf")
)

#Heroina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de heroina y aporte al hogar en Bogota",
  col = c("#367c1a", "#c9ecaf")
)

#Marihuana 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana y aporte al hogar en Bogota",
  col = c("#367c1a", "#c9ecaf")
)

#SANTANDER

#Consumo y aporte al hogar Basuco 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco y aporte al hogar en Santander",
  col = c("#367c1a", "#c9ecaf")
)

#Consumo y aporte al hogar cocaina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina y aporte al hogar en Santander",
  col = c("#367c1a", "#c9ecaf")
)


#Consumo y aporte al hogar extasis 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis y aporte al hogar en Santander",
  col = c("#367c1a", "#c9ecaf")
)

#Consumo y aporte al hogar heroina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de heroina y aporte al hogar en Santander",
  col = c("#367c1a", "#c9ecaf")
)


#Consumo y aporte al hogar marihuana 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana y aporte al hogar en Santander",
  col = c("#367c1a", "#c9ecaf")
)

#VALLE DEL CAUCA

#Consumo y aporte al hogar 
#Basuco 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de basuco y aporte al hogar en Valle del Cauca",
  col = c("#367c1a", "#c9ecaf")
)


#Cocaina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de cocaina y aporte al hogar en Valle del Cauca",
  col = c("#367c1a", "#c9ecaf")
)

#Extasis 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de extasis y aporte al hogar en Valle del Cauca",
  col = c("#367c1a", "#c9ecaf")
)

#Heroina 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de heroina y aporte al hogar en Valle del Cauca",
  col = c("#367c1a", "#c9ecaf")
)

#Marihuana 
columna <- "D_01"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que si aportan al hogar : %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que no aportan al hogar : %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Consumo de marihuana y aporte al hogar en Valle del Cauca",
  col = c("#367c1a", "#c9ecaf")
)


#ANTIOUIA

#Sexo de los consumidores Basuco 
columna <- "SEXO"
valores<-c("1", "2")
etiquetas <- c(
  "HOMBRE",
  "MUJER"
)

cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen basuco  en Antioquia",
  col = c("#265409", "#367c1a")
)

#Sexo de los consumidores cocaina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen cocaina en Antioquia",
  col = c("#265409", "#367c1a")
)

#Sexo de los consumidores extasis 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen extasis en Antioquia",
  col = c("#265409", "#367c1a")
)


#Sexo de los consumidores heroina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen heroina en Antioquia",
  col = c("#265409", "#367c1a")
)

#Sexo de los consumidores marihuana 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen marihuana en Antioquia",
  col = c("#265409", "#367c1a")
)

#Bogota D.C

#Sexo de los consumidores 
#Basuco 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen basuco  en Bogota",
  col = c("#265409", "#367c1a")
)



#Cocaina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen cocaina en Bogota",
  col = c("#265409", "#367c1a")
)

#Extasis 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen extasis en Bogota",
  col = c("#265409", "#367c1a")
)

#Heroina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen heroina en Bogota",
  col = c("#265409", "#367c1a")
)

#Marihuana 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen marihuana en Bogota",
  col = c("#265409", "#367c1a")
)

#SANTANDER

#Sexo de los consumidores Basuco 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen basuco  en Santander",
  col = c("#265409", "#367c1a")
)

#Sexo de los consumidores cocaina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen cocaina en Santander",
  col = c("#265409", "#367c1a")
)


#Sexo de los consumidores extasis 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen extasis en Santander",
  col = c("#265409", "#367c1a")
)

#Sexo de los consumidores heroina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen heroina en Santander",
  col = c("#265409", "#367c1a")
)


#Sexo de los consumidores marihuana 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen marihuana en Santander",
  col = c("#265409", "#367c1a")
)

#VALLE DEL CAUCA

#Sexo de los consumidores 
#Basuco 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen basuco  en Valle del Cauca",
  col = c("#265409", "#367c1a")
)


#Cocaina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen cocaina en Valle del Cauca",
  col = c("#265409", "#367c1a")
)

#Extasis 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen extasis en Valle del Cauca",
  col = c("#265409", "#367c1a")
)

#Heroina 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen heroina en Valle del Cauca",
  col = c("#265409", "#367c1a")
)

#Marihuana 
columna <- "SEXO"
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Hombres que consumen:: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Mujeres que consumen:: %s\n", cuenta))
  }
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Sexo personas que consumen marihuana en Valle del Cauca",
  col = c("#265409", "#367c1a")
)

