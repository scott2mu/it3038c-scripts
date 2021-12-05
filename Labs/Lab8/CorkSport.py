import requests, re
from bs4 import BeautifulSoup

data = requests.get("https://corksport.com/").content
soup = BeautifulSoup(data, 'html.parser')
span2 = soup.findAll("a", {"class":"product-title"})
span = soup.findAll("span", {"class":"ty-price"})
for title in span2:
    
for price in span:
    print(price.text.strip())

input('Press ENTER to exit')