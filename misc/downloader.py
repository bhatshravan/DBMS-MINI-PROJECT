import urllib
import urllib.request
import time
import random


#Stocks lst
#stocks_list = ["ADANIPORTS","ASIANPAINT","AXISBANK","BAJAJ-AUTO","BAJFINANCE","BAJAJFINSV","BHARTIARTL","BPCL","CIPLA","COALINDIA","DRREDDY","EICHERMOT","GAIL","GRASIM","HCLTECH","HDFC","HDFCBANK","HEROMOTOCO","HINDALCO","HINDUNILVR","HINDPETRO","ICICIBANK","IBULHSGFIN","INDUSINDBK","INFY","IOC","ITC","KOTAKBANK","LT","LUPIN","MARUTI","NTPC","ONGC","POWERGRID","RELIANCE","SBIN","SUNPHARMA","TCS","TATAMOTORS","TATASTEEL","TECHM","TITAN","ULTRACEMCO","UPL","VEDL","WIPRO","YESBANK","ZEEL"]
stocks_list = ["BHARTIARTL","GAIL","HINDALCO","INFY","SBIN","TITAN"]
#Misc
api_key = ["D4V3YEYJGNXZ27PL","BEZAPQ60MX6M0MTV","C73M71O6LA04D9KI","4D5AD7GG5BUJ0R9Y","5LIB86FZXJJ5YQD3","LK8JHRNLLTU90Q9C"]
outputsize = "full"
#filename = "AXISBANK"


#Url initialization

def download():

	sopped = False
	start_time = time.time()
	end_time = time.time()
	endlist=""
	lol = 0
	for filename in stocks_list:

		rand_key = api_key[random.randrange(0,len(api_key))]
		#rand_key = api_key[random.choice([0,1,2])]
		url = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=NSE%3A"+filename+"&apikey="+rand_key+"&datatype=csv&outputsize="+outputsize




		print("Starting download of {0} using key {1}".format(filename,rand_key))
		page = urllib.request.urlopen(url)


		content = page.read()
		
		#print(content)
		if b'hank you for using Alpha Vantage' not in content:
			print("Yes")

			f = open(filename, "wb")
			f.write(content)
			f.close()
			if sopped == True:
				elapsed_time = time.time() - start_time 
				print(elapsed_time)
				sopped = False

		else:
			endlist+="\",\""+filename
			print("No\nStopping for 30 seconds")

			sopped = True
			if sopped == False:
				start_time = time.time()
			time.sleep(30)

		print("Finsihed downloading\n\n")

	print(endlist)

if __name__ == '__main__':
	download()