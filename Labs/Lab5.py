#scott2mu Lab 5 9/23/2021

import datetime
while True:
	try:
		birthday = input("Enter your birthday:")
		daycalc= datetime.datetime.strptime(birthday, '%m/%d/%Y')
		break
	except:
		print("You have entered it incorrectly, Enter with slashes in the format of Month/Day/Year")
	
timeday=datetime.datetime.today()
finalcalc=(timeday-daycalc).total_seconds()
strfinal= str(finalcalc)
print("You are "+strfinal+" seconds old.")