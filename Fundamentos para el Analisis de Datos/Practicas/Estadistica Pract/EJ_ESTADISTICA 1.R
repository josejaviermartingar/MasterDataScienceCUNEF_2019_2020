###### FUNDAMENTOS PARA EL AN?LISIS DE DATOS Y LA INVESTIGACI?N  ##########

########################  PR?CTICA ESTADISTICA ###########################

                       #####   PROBABILIDAD    #####


#Funciones de la distribuciones de probabilidad
#raiz:foo (nombre de la distribuci?n)


#dfoo--funci?n de densidad
#pfoo--funci?n de distribuci?n (porb.acumulada)
#qfoo--Funci?n inversa F^-1(x)
#rfoo--generador aleatorio de valores




#VARIABLE DISCRETA


#Dado E=(1,2,3,4,5,6) con pb=1/6

#Probabilidad de en 7 tiradas sacar 3 veces el 5
dbinom(3,7,1/6) 


#Probabilidadd de sacar como mucho dos veces el 5
dbinom(c(2,1,0),7,1/6)

sum(dbinom(c(2,1,0),7,1/6)) #Pb total de menos de 3


pbinom(c(2),7,1/6) #Funci?n de distribuci?n F(2)
pbinom(2,7,1/6)

qbinom(c(0.90),7,1/6) #ofrece el valor que acumula el 0.90 de pb

pbinom(c(2),7,1/6,lower.tail=F) #Ofrece la probabilidad complementaria.
#Es decir 1-F(2)

sum(dbinom(2:5,7,1/6))  #Pb de que salgan entre 2 y 5




#DISTRIBUCION BINOMIAL 
#Generamos muestra de 100 valores con distribuci?n binomial n=5 p=0.25

n=5
p=0.25
x = rbinom(100, n, p)
rbinom(1000,n,p)
hist(x,probability=T)  #Histograma


mean (x)  #calculo de la media
var(x)  #calculo de la varianza
sd(x)  #calculo de desviaci?n t?pida
sqrt(var(x))
median(x)
quantile(x,probs=c(0.05, 0.95))
quantile(x,seq(0,1, 0.20)) #calculo de quintiles
quantile(x,seq(0.9,1, 0.01))  #Calculo de percentiles del 90-100
summary(x)


#Para superponer al histograma la funci?n de cuant?a

par(fig=c(0,1,0,1))
hist(x, prob=T)
xvals=0:n
points(xvals, dbinom(xvals, n, p), type= "h", lwd=3)
par(fig=c(0,1,0,1), new=T)
xvals=0:n
points(xvals, dbinom(xvals, n, p), type= "p", lwd=3)


# Se propone repetir el ej con n=50, n=1000  (La binomial tiende a una Normal)



#VARIABLE CONTINUA

#Distribuci?n Uniforme

x=runif(100)  #simulaci?n de 100 U(0,1)

runif (100,2,5) #Simulaci?n 100 U(2,5)

hist(x,probability=T, col=grey(0.9), main="Histograma distribuci?n
     #Uniforme[0,1]")
curve(dunif(x,0,1), add=T)
mean(x) 
sd(x)
summary(x)



#Distribuci?n Normal

rnorm(n,mean=0,sd=1) #Genera obs.distribuci?n normal,media=0,varianza=1 

x=rnorm(100)  #Generar n=100 
hist(x,probability=T, col=gray(0.9), main= "Histograma de una muestra
     N(0,1)")

#Para superponeer al histograma la funci?n de densidad

curve(dnorm(x), add=T)
mean(x)
sd(x)
summary(x)


x=rnorm(1000, 100, 16) #Generar n=100 y n=1000
x
hist(x,probability=T, col=gray(0.9), main= "Histograma de una muestra
     N(100,16)")

#Para superponeer al histograma la funci?n de densidad
hist(x,probability=T, col=gray(0.9), main="Histograma de una muestra
     #con distribuci?n N(100,16)")
curve(dnorm(x, 100, 16), add=T)




#Plots de probabilidad normal:
# representa los cuantiles de los datos muestrales vs. cuatiles te?ricos 

x=rnorm(1000)  #Generar n=100 y n=1000 (le gusta este grafico)
qqnorm(x, main="N(0,1)")
qqline(x)


# N(0,1)  C?lculo de probabilidades
pnorm(0)
pnorm(1.645) #F(x)
1-pnorm(1.645)  # Pb complementaria a las F(x)
pnorm(1.645, lower.tail=F)

qnorm(0.95) #C?lculo de los valores

# N(1,1)
pnorm(1,1,1)
pnorm(2,1,1)
pnorm(2,1,1)-pnorm(1,1,1)  #Probabilidad de un intervalo

#  C?lculo de probabilidades

#B(5, 0.25)
#U(0,100)




#DISTRIBUCION POISSON 
#Generar muestra de n=10 Lambda=10
x = rpois(10, 10)
rpois(100,10)

#Histograma
hist(x,probability=T, col=gray(0.9), main= "Histograma")  



#Generar muestra de n=100 Lambda=10

