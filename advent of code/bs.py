from urllib.request import urlopen
import bs4
import re

html = urlopen("https://pl.wikipedia.org/wiki/Kevin_Bacon")
bs = bs4.BeautifulSoup(html, 'html.parser')
for link in bs.find('div', {'id': 'bodyContent'}).find_all('a'):
    if 'href' in link.attrs:
        print(link.attrs['href'])
print(bs)

print(bs.find(id = 'mw-content-text').find_all('p')[0].get_text(), end="")
print(bs.find(id = 'mw-content-text').find_all('p')[1].get_text())

