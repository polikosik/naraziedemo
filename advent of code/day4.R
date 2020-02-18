low <-165432
high <- 707912
i<-123444
licznik<-0
for( i in seq(low, high))
{
    a<-substr(as.character(i), 1, 1)
    b<-substr(as.character(i), 2, 2)
    c<-substr(as.character(i), 3, 3)
    d<-substr(as.character(i), 4, 4)
    e<-substr(as.character(i), 5, 5)
    f<-substr(as.character(i), 6, 6)

    if((a==b &&b!=c)|| (b==c&&c!=d&&b!=a)|| (c==d&&d!=e&&c!=b)|| (d==e&&e!=f&&d!=c)|| (e==f&&e!=d))
    {
    a<-as.numeric(a)
    b<-as.numeric(b)
    c<-as.numeric(c)
    d<-as.numeric(d)
    e<-as.numeric(e)
    f<-as.numeric(f)
        if (a<=b && a<=c && a<=d && a<=e && a<=f && b<=c &&b<=d&&b<=e && b<=f && c<=d&&c<=e&&c<=f&&d<=e&&d<=f&&e<=f) {
           licznik <-licznik+1
        }
    }
}

print (licznik)