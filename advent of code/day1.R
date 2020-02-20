x<-scan("U:\\projekty\\test\\day1.txt", sep="\n")
sum<-0L
i<-x[1]
for (i in x) {
    a<-floor(i/3) - 2
    while (a > 0)
    {
        sum<- sum + a
        a<-floor(a/3) - 2
    }
}

print(sum)
