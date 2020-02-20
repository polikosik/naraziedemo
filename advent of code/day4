x <- scan("U:\\projekty\\test\\input8.txt", what="", sep="\n")
x<-as.character(x)
licznik<-0
najmniej<-1231445L
#i<-1L
pozycja<-1L
for (i in seq(1, 15000/150, 1)) {
   a<-substr(x, (25*6)*(i-1)+1, (25*6)*i)
   licznik<-0
   for (j in seq(1,25*6,1)) {
       if(substr(a, j, j)=="0")
       {
           licznik<-licznik +1
       }
   }
    if(licznik<najmniej)
       {
           najmniej<-licznik
           pozycja<-i
       }
}
print(pozycja)
b<-substr(x, (25*6)*(pozycja-1)+1, (25*6)*pozycja)
licznik1<-0
licznik2<-0
for (k in seq(1,25*6,1)) {
       if(substr(b, k, k)=="1")
       {
           licznik1<-licznik1 +1
       }
        if(substr(b, k, k)=="2")
       {
           licznik2<-licznik2 +1
       }
   }

print(licznik1*licznik2)

final<-c(rep(2, 150))
i <- j<- 1L
for (i in seq(1, 15000/150, 1)) {
   a<-substr(x, (25*6)*(i-1)+1, (25*6)*i)
   #licznik<-0
   for (j in seq(1,25*6,1)) {
       if(substr(a, j, j)=="0" && final[j]==2)
       {
           final[j]<-substr(a, j, j)
       }
       else if(substr(a, j, j)=="1" && final[j]==2)
       {
           final[j]<-substr(a, j, j)
       }
   }
}
unlist(final)
wynik<-vector(mode = "list")
for (v in final){
  wynik <- c(wynik, v)
  }

paste(final, collapse = '')
mode(final)
unlist(wynik)
print(final)
