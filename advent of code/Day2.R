a<-scan("./input-day2.txt",sep = ",")
i<-1L
a[0]
while (1==1)
  {
  if(a[i]==1)
    {
    a[a[i+3]+1] <- a[a[i+1]+1] + a[a[i+2]+1]
  }
  if(a[i]==2)
    {
    a[a[i+3]+1] <- a[a[i+1]+1] * a[a[i+2]+1]
  }
  if(a[i]==99)
    {
    break
  }
  i<-i + 4
}

#Part two

j<-k<-1L

for (j in seq(1,99, 1))
  {
  a<-scan("./input-day2.txt",sep = ",")
  noun<-a[2]<-j
  for (k in seq(1,99,1))
    {
    a<-scan("./input-day2.txt",sep = ",")
    verb <- k
    a[3]<-verb
    a[2]<-noun
i<-1L
    while (1==1)
    {
  if(a[i]==1)
    {
    a[a[i+3]+1] <- a[a[i+1]+1] + a[a[i+2]+1]
  }
  if(a[i]==2)
    {
    a[a[i+3]+1] <- a[a[i+1]+1] * a[a[i+2]+1]
  }
  if(a[i]==99)
    {
    break
  }
  i<-i + 4
    }
    if (a[1]==19690720)
      {
      break
    }
  }
if (a[1]==19690720)
      {
      break
    }
}