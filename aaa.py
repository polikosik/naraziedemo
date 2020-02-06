'''
print(hash("12"))
d = {}
print(d)
print(type(d))
d[1] = "a"
print(d)
d['b'] = 'cda'
print(d)

print(list(iter(d)))


def squares():
    n = 10
    for i in (1, n + 1):
        yield i ** 2


g = (x ** 2 for x in range(100))
slownik = {}
for i in range(1, 11):
    slownik[g] = i ** 2
print(slownik)

import itertools

pierwszalitera = lambda x: x[0]
imiona = ["adam", "Ewa"]
for litera, imiona in itertools.groupby(imiona, pierwszalitera):
   print(litera, list(imiona))

import numpy as np


arr = np.array([[1,2,3],[4,5,6],[7,8,9]])

print (arr[:, :1])
'''
#pliki pliki pliki od liczenia mam zakwasy
""""
plik = open("C:\\Users\\Paweł Ciepielowski\\Desktop\\111.zip", 'r+b')
num=list(plik.read())
plik.close()
print(num)
"""
'''
sum=0
#print(type(sum))
plik = open("C:\\Users\\Paweł Ciepielowski\\Desktop\\123.txt", 'r')
x = plik.read().splitlines()
print(x)
for i in x:
    summ=0
    j = math.floor(int(i) / 3) - 2
    #print(j)
    while(j>0):
        summ = summ + j
        j = math.floor(int(j) / 3) - 2
        #print(summ)
    sum = sum + summ
    #sum = sum + (math.floor(int(i)/3)-2)
print(sum)
'''
import csv
with open("C:\\Users\\Paweł Ciepielowski\\Desktop\\222.txt", 'r') as f:
  reader = csv.reader(f)

  your_list = list(reader)

  for i in your_list:
      if i == 1:
          your_list[your_list[i+3]]=[i+1]+your_list[i+2]
          break
    print (your_list)
