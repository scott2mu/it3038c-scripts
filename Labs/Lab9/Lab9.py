import requests
import json

r = requests.get('http://localhost:3000')
data = r.json()

x = 0
y = 1
while x < 4: #while loop to print widget info.
    print("Widget %d is %s \n" %(y, (data[x]['color'])))
    y += 1
    x += 1