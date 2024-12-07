#OFICIO DEL CONSUMIDOR
columna <- "D_02"
valores<-c("1", "2", "3", "4","5","6","7","8")
etiquetas <- c(
  "Trabajando",
  "Buscando Empleo",
  "Estudiando",
  "Oficios del Hogar",
  "Incapacitado",
  "Pensionado",
  "Ocio",
  "Otro"
)

#ANTIOUIA
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen basuco: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen basuco: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen basuco: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen basuco: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen basuco: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen basuco: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen basuco: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen basuco: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de basuco en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de basuco en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)

#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen cocaina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen cocaina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen cocaina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen cocaina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen cocaina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen cocaina: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de cocaina en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de cocaina en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen extasis: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen extasis: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen extasis: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen extasis: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen extasis: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen extasis: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen extasis: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen extasis: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de extasis en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen heroina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen heroina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen heroina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen heroina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen heroina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen heroina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen heroina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen heroina: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de heroina en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen marihuana: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen marihuana: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen marihuana: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen marihuana: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen marihuana: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen marihuana: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de marihuana en Antioquia",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de marihuana en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#Bogota
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen basuco: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen basuco: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen basuco: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen basuco: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen basuco: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen basuco: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen basuco: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen basuco: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de basuco en Bogota",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen cocaina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen cocaina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen cocaina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen cocaina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen cocaina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen cocaina: %s\n", cuenta))
  }
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de cocaina en Bogota",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen extasis: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen extasis: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen extasis: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen extasis: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen extasis: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen extasis: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen extasis: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen extasis: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de extasis en Bogota",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen heroina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen heroina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen heroina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen heroina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen heroina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen heroina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen heroina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen heroina: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de heroina en Bogota",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen marihuana: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen marihuana: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen marihuana: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen marihuana: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen marihuana: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen marihuana: %s\n", cuenta))
  }
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de marihuana en Bogota",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#Santander
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen basuco: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen basuco: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen basuco: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen basuco: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen basuco: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen basuco: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen basuco: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen basuco: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de basuco en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen cocaina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen cocaina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen cocaina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen cocaina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen cocaina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen cocaina: %s\n", cuenta))
  }
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de cocaina en Santander",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen extasis: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen extasis: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen extasis: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen extasis: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen extasis: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen extasis: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen extasis: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen extasis: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de extasis en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen heroina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen heroina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen heroina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen heroina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen heroina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen heroina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen heroina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen heroina: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de heroina en Santander",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen marihuana: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen marihuana: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen marihuana: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen marihuana: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen marihuana: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen marihuana: %s\n", cuenta))
  }
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de marihuana en Santander",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#Valle del Cauca
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen basuco: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen basuco: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen basuco: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen basuco: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen basuco: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen basuco: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen basuco: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen basuco: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de basuco en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen cocaina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen cocaina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen cocaina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen cocaina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen cocaina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen cocaina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen cocaina: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de cocaina en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen extasis: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen extasis: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen extasis: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen extasis: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen extasis: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen extasis: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen extasis: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen extasis: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de extasis en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen heroina: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen heroina: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen heroina: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen heroina: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen heroina: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen heroina: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen heroina: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen heroina: %s\n", cuenta))
  }
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409"),
  main = "Oficio del consumidor de heroina en Valle del Cauca",
  xlab = "Tiempo",
  ylab = "Número de personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que trabajan y consumen marihuana: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que buscan empleo y consumen marihuana: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que estudian y consumen marihuana: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que se encargan del oficio del hogar y consumen marihuana: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que estan incapacitados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "6") {
    cat(sprintf("Personas que estan pensionados y consumen marihuana: %s\n", cuenta))
  } else if (valor == "7") {
    cat(sprintf("Personas que se dedican al ocio y consumen marihuana: %s\n", cuenta))
  } else if (valor == "8") {
    cat(sprintf("Personas que se dedican a otras actividades y consumen marihuana: %s\n", cuenta))
  }
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Oficio del consumidor de marihuana en Valle del Cauca",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#c9ecaf", "#367c1a", "#58a92e", "#265409")
)


#OFICIO DEL CONSUMIDOR
columna <- "D_08"
valores<-c("1", "2", "3", "4","5")
etiquetas <- c(
  "Muy Malo",
  "Malo",
  "Regular",
  "Bueno",
  "Muy Bueno"
)

#Antioquia
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(antiouia_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen basuco y se sienten muy mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen basuco y se sienten mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen basuco y se sienten regular de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen basuco y se sienten bien de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen basuco y se sienten muy bien de salud en Antioquia: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de basuco en Antioquia",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen cocaina y se sienten mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen cocaina y se sienten regular de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen cocaina y se sienten bien de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy bien de salud en Antioquia: %s\n", cuenta))
  } 
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Estado de Salud del consumidor de cocaina en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e")
)


#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen extasis y se sienten muy mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen extasis y se sienten mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen extasis y se sienten regular de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen extasis y se sienten bien de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen extasis y se sienten muy bien de salud en Antioquia: %s\n", cuenta))
  } 
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Estado de Salud del consumidor de extasis en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e")
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen heroina y se sienten muy mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen heroina y se sienten mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen heroina y se sienten regular de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen heroina y se sienten bien de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen heroina y se sienten muy bien de salud en Antioquia: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de heroina en Antioquia",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(antiouia_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen marihuana y se sienten mal de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen marihuana y se sienten regular de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen marihuana y se sienten bien de salud en Antioquia: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy bien de salud en Antioquia: %s\n", cuenta))
  } 
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Estado de Salud del consumidor de marihuana en Antioquia",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e")
)

#Bogota
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(bogota_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen basuco y se sienten muy mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen basuco y se sienten mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen basuco y se sienten regular de salud en Bogota: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen basuco y se sienten bien de salud en Bogota: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen basuco y se sienten muy bien de salud en Bogota: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de basuco en Bogota",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen cocaina y se sienten mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen cocaina y se sienten regular de salud en Bogota: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen cocaina y se sienten bien de salud en Bogota: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy bien de salud en Bogota: %s\n", cuenta))
  } 
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de cocaina en Bogota",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen extasis y se sienten muy mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen extasis y se sienten mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen extasis y se sienten regular de salud en Bogota: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen extasis y se sienten bien de salud en Bogota: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen extasis y se sienten muy bien de salud en Bogota: %s\n", cuenta))
  } 
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estadi de Salud del consumidor de extasis en Bogota",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen heroina y se sienten muy mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen heroina y se sienten mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen heroina y se sienten regular de salud en Bogota: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen heroina y se sienten bien de salud en Bogota: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen heroina y se sienten muy bien de salud en Bogota: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de heroina en Bogota",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(bogota_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen marihuana y se sienten mal de salud en Bogota: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen marihuana y se sienten regular de salud en Bogota: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen marihuana y se sienten bien de salud en Bogota: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy bien de salud en Bogota: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Sslud del consumidor de marihuana en Bogota",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)


#Santander
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(santander_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen basuco y se sienten muy mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen basuco y se sienten mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen basuco y se sienten regular de salud en Santander: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen basuco y se sienten bien de salud en Santander: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen basuco y se sienten muy bien de salud en Santander: %s\n", cuenta))
  } 
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Estado de Salud del consumidor de basuco en Santander",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e")
)

#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen cocaina y se sienten mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen cocaina y se sienten regular de salud en Santander: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen cocaina y se sienten bien de salud en Santander: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy bien de salud en Santander: %s\n", cuenta))
  } 
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de cocaina en Santander",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen extasis y se sienten muy mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen extasis y se sienten mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen extasis y se sienten regular de salud en Santander: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen extasis y se sienten bien de salud en Santander: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen extasis y se sienten muy bien de salud en Santander: %s\n", cuenta))
  } 
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estadi de Salud del consumidor de extasis en Santander",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen heroina y se sienten muy mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen heroina y se sienten mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen heroina y se sienten regular de salud en Santander: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen heroina y se sienten bien de salud en Santander: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen heroina y se sienten muy bien de salud en Santander: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de heroina en Santander",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(santander_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen marihuana y se sienten mal de salud en Santander: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen marihuana y se sienten regular de salud en Santander: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen marihuana y se sienten bien de salud en Santander: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy bien de salud en Santander: %s\n", cuenta))
  } 
}


pie(
  cuentas,
  labels = etiquetas,
  main = "Estado de Salud del consumidor de marihuana en Santander",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e")
)


#Valle del Cauca
#Oficio del consumidor Basuco 
cuentas <- c()

for (valor in valores) {
  cuenta <- sum(valle_basuco[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen basuco y se sienten muy mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen basuco y se sienten mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen basuco y se sienten regular de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen basuco y se sienten bien de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen basuco y se sienten muy bien de salud en Valle del Cauca: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de basuco en Valle del Cauca",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor cocaina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_cocaina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen cocaina y se sienten mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen cocaina y se sienten regular de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen cocaina y se sienten bien de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen cocaina y se sienten muy bien de salud en Valle del Cauca: %s\n", cuenta))
  } 
  
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de cocaina en Valle del Cauca",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)


#Oficio del consumidor extasis 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_extasis[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen extasis y se sienten muy mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen extasis y se sienten mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen extasis y se sienten regular de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen extasis y se sienten bien de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen extasis y se sienten muy bien de salud en Valle del Cauca: %s\n", cuenta))
  } 
  
}

pie(
  cuentas,
  labels = etiquetas,
  main = "Estado de Salud del consumidor de extasis en Valle del Cauca",
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e")
)

#Oficio del consumidor heroina 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_heroina[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  if (valor == "1") {
    cat(sprintf("Personas que consumen heroina y se sienten muy mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen heroina y se sienten mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen heroina y se sienten regular de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen heroina y se sienten bien de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen heroina y se sienten muy bien de salud en Valle del Cauca: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de heroina en Valle del Cauca",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)

#Oficio del consumidor marihuana 
cuentas <- c()
for (valor in valores) {
  cuenta <- sum(valle_marihuana[[columna]] == valor)
  cuentas <- c(cuentas, cuenta)  # Agregar cada cuenta al vector
  
  if (valor == "1") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "2") {
    cat(sprintf("Personas que consumen marihuana y se sienten mal de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "3") {
    cat(sprintf("Personas que consumen marihuana y se sienten regular de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "4") {
    cat(sprintf("Personas que consumen marihuana y se sienten bien de salud en Valle del Cauca: %s\n", cuenta))
  } else if (valor == "5") {
    cat(sprintf("Personas que consumen marihuana y se sienten muy bien de salud en Valle del Cauca: %s\n", cuenta))
  } 
}

barplot(
  cuentas,
  names.arg = etiquetas,
  col = c("#c9ecaf", "#367c1a", "#58a92e", "#265409","#58a92e"),
  main = "Estado de Salud del consumidor de basuco en Valle del Cauca",
  xlab = "Estado de Salud",
  ylab = "Numero de Personas",
  ylim = c(0, max(cuentas) + 5)
)