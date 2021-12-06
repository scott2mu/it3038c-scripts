#Project3 Murray Scott
import requests
class converter: #class referenced for conversion
	rate ={} #conversion rates stored here
	def __init__(only,address):
		bulk =requests.get(address).json()
		only.rate =bulk["rates"] #pull rates from json bulk
	def convert(only,fromc,toc,amount): #conversion
		firstamount =amount
		if fromc !='EUR' :
			amount =amount /only.rate[fromc]
		print('{}{}={}{}'.format(firstamount,fromc,amount,toc))#prints out the conversion
if __name__ =="__main__": #Main code for script
    key ='ebffcd48c99f12488cf4bdb93a458c29' #provided key from making a free account with fixer.io
    address =str.__add__('http://data.fixer.io/api/latest?access_key=',key) #link with key
    c =converter(address)
    convertingfrom =input("*refer to provided link. Please input the country's currency acronym that you are converting from in all caps (Three letters, no spaces): ") #User Input
    convertingto =input("Country's acronym you are converting to: ") #User Input
    amount =int(input("Amount to convert: ")) #User Input
    c.convert(convertingfrom,convertingto,amount) #Call back to converter class to process conversion
    input('Press ENTER to exit script') #pauses script to allow user to read output if they are not using any special thirdparty software.
#Sources: 
#https://www.w3schools.com/python/python_classes.asp
#https://www.freecodecamp.org/news/if-name-main-python-example/
#https://docs.python-requests.org/en/latest/
#https://www.howtopython.org/4-best-python-currency-apis-for-developers/
#https://fixer.io/quickstart
#https://www.geeksforgeeks.org/python-get-the-real-time-currency-exchange-rate/?ref=lbp
#https://gist.github.com/Fluidbyte/2973986