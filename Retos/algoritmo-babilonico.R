n <- 7                #Dato
E <- 10^-8            #Error permitido
x <- abs(3)           #Valor inicial
y <- (x + n/x) / 2    #Respuesta calculada con error E

cantDecimales <- function(x, k) trimws(format(round(x, k), nsmall=k))

valorOriginal = sqrt(n)
valorRedondeado = cantDecimales(sqrt(n), 8)
cat("El valor de la raiz obtenido mediante la funcion sqrt es: ", valorRedondeado, "\n")

contador <- 0
while(abs(x-y) > E) {
  x <- y
  y <- (x + n/x) / 2 
  
  contador <- contador + 1
  cat("Iteracion ", contador, "\n")
  cat("El valor calculado es: ", cant_decimales(y, 8), "\n")
  cat("El error absoluto es: ", abs(valorOriginal - y), "\n")
  cat("El error relativo es: ", abs(valorOriginal - y)/valorOriginal, "\n\n")
}

cat("El resultado con un error absoluto de ", E, " es: ", cantDecimales(y, 8), "\n")
cat("El error absoluto al final es de: ", abs(valorOriginal - y), "\n")
