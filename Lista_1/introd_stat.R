#1
p = 0.1
n = 4
#1A
dbinom(0,n,p) #0.6561
#1B
dbinom(1,n,p) #0.2916
#1C
dbinom(2,n,p) #0.0486
#1D
pbinom(2,n,p) #0.9963

#2
p = 0.05
n = 18
pbinom(2,n,p) #0.9418711

#3
p = 0.2
n = 10
p10 = dbinom(0,n,p)
p8 = dbinom(1,n,p)
p6 = dbinom(2,n,p) + dbinom(3,n,p)
p2 = 1 - (p10+p8+p6)
PM = 10*p10 + 8*p8 + 6*p6 + 2*p2 #6.482872

#4
p1 = 0.5
p2 = 0.6
n = 5
#Cenários favoráveis
p = 0
y = 0
for (x in 1:5){
  if (y <= x){
    p = p + dbinom(x,n,p1)*dbinom(y,n,p2)
    y = y + 1
  } 
}

#5
p = 0.005
n = 600
pbinom(1,n,p) #0.1984002

#6
lambda = 2
max = 3
#6A
ppois(max,lambda,lower.tail = FALSE) #0.1428765
#6B
total = qpois(0.95,lambda)
extra = total - 3
#6C
lambda

#7
m = 120
s = 2
prop = (pnorm(118,mean = m,sd=s) - pnorm(116,mean = m,sd = s))*3

#8
md = 500
st = 50
#prob de escassez
pnorm(600,mean=md,sd=st) #0.9772499

#9
#45 horas
pnorm(45,mean=42,sd=36) #0.5332068
pnorm(45,mean=45,sd=9) #0.5
pnorm(49,mean=42,sd=36) #0.5770861
pnorm(49,mean=45,sd=9) #0.6716394

#10
p = 0.1
n = 100
dbinom(12,n,p) #0.09878801
