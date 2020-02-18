rm(list=ls())
x <- scan("list.txt", what = "", sep = ",")
y <- scan("list2.txt", what = "", sep = ",")

pola <- matrix(0, ncol = 2)
posa <- matrix(data = 0, 0, nrow = 1, ncol = 2)
polb <- matrix(0, ncol = 2)
posb <- matrix(data = 0, 0, nrow = 1, ncol = 2)

for (i in seq(1:301)) {
  f <- substr(x[i], start = 1, stop = 1)
  g <- as.numeric(substr(x[i], start = 2, stop = nchar(x[i])))
  if (f == "R")
    {
    while (g > 0) {
      posa[1] <- posa[1] + 1
      pola <- rbind(pola, posa)
      g <- g - 1
    }
  }
  if (f == "L")
    {
    while (g > 0) {
      posa[1] <- posa[1] - 1
      pola <- rbind(pola, posa)
      g <- g - 1
    }
  }
  if (f == "U")
    {
    while (g > 0) {
      posa[2] <- posa[2] + 1
      pola <- rbind(pola, posa)
      g <- g - 1
    }
  }
  if (f == "D")
    {
    while (g > 0) {
      posa[2] <- posa[2] - 1
      pola <- rbind(pola, posa)
      g <- g - 1
    }
  }
}


for (i in seq(1:301)) {
  f <- substr(y[i], start = 1, stop = 1)
  g <- as.numeric(substr(y[i], start = 2, stop = nchar(y[i])))
  if (f == "R")
    {
    while (g > 0) {
      posb[1] <- posb[1] + 1
      polb <- rbind(polb, posb)
      g <- g - 1
    }
  }
  if (f == "L")
    {
    while (g > 0) {
      posb[1] <- posb[1] - 1
      polb <- rbind(polb, posb)
      g <- g - 1
      #if(posb==pola)
      # {print("sad")}
    }
  }
  if (f == "U")
    {
    while (g > 0) {
      posb[2] <- posb[2] + 1
      polb <- rbind(polb, posb)
      g <- g - 1
    }
  }
  if (f == "D")
    {
    while (g > 0) {
      posb[2] <- posb[2] - 1
      polb <- rbind(polb, posb)
      g <- g - 1
    }
  }
}

p1 = apply(pola, 1, paste, collapse = " ")
p2 = apply(polb, 1, paste, collapse = " ")
int = pola[which(p1 %in% p2,),]
int = int[-1,]
min(apply(int, 1, function(x)sum(abs(x))))

#

aaa<-function(x)which(p2%in%x)
w1 = which(p1%in%p2)
pint = p1[p1%in%p2]
w2 = sapply(pint,aaa)
min(apply(cbind(w1,w2)[-1,],1,sum))-2
