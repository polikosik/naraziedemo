from urllib.request import urlopen
from bs4 import BeautifulSoup

html = urlopen("https://pythonscraping.com/pages/warandpeace.html")
bs= BeautifulSoup(html.read(), 'html.parser')

listaimion = bs.findAll('span', {'class':'green'})
for i in listaimion:
    print(i.get_text())