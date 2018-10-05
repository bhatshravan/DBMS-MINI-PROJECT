import urllib
import urllib.request
import time
import random


#Stocks lst
stocks_list = ["ADANIPORTS","ASIANPAINT","AXISBANK","BAJAJ-AUTO","BAJFINANCE","BAJAJFINSV","BHARTIARTL","BPCL","CIPLA","COALINDIA","DRREDDY","EICHERMOT","GAIL","GRASIM","HCLTECH","HDFC","HDFCBANK","HEROMOTOCO","HINDALCO","HINDUNILVR","HINDPETRO","ICICIBANK","IBULHSGFIN","INDUSINDBK","INFY","IOC","ITC","KOTAKBANK","LT","LUPIN","M&M","MARUTI","NTPC","ONGC","POWERGRID","RELIANCE","SBIN","SUNPHARMA","TCS","TATAMOTORS","TATASTEEL","TECHM","TITAN","ULTRACEMCO","UPL","VEDL","WIPRO","YESBANK","ZEEL"]
#stocks_list = ["GRASIM","HCLTECH","HDFC","HDFCBANK","HEROMOTOCO","HINDALCO","HINDUNILVR","HINDPETRO","ICICIBANK","IBULHSGFIN","INDUSINDBK","INFY","IOC","ITC","KOTAKBANK","LT","LUPIN","M&M","MARUTI","NTPC","ONGC","POWERGRID","RELIANCE","SBIN","SUNPHARMA","TCS","TATAMOTORS","TATASTEEL","TECHM","TITAN","YESBANK","ZEEL"]

#Misc
api_key = ["D4V3YEYJGNXZ27PL","BEZAPQ60MX6M0MTV","C73M71O6LA04D9KI","4D5AD7GG5BUJ0R9Y","5LIB86FZXJJ5YQD3","LK8JHRNLLTU90Q9C"]
outputsize = "full"
#filename = "AXISBANK"


#Url initialization

def download():

	lol = 0
	for filename in stocks_list:

		rand_key = api_key[random.randrange(0,len(api_key)-1)]
		#rand_key = api_key[random.choice([0,1,2])]
		url = "https://www.alphavantage.co/query?function=TIME_SERIES_MONTHLY&symbol=NSE%3A"+filename+"&apikey="+rand_key+"&datatype=csv&outputsize="+outputsize


		#lol+=1
		#if lol==5:
		#	time.sleep(10)
		#	lol=0


		print("Starting download of {0} using key\n".format(filename,rand_key))
		page = urllib.request.urlopen(url)

		f = open(filename, "wb")
		content = page.read()
		f.write(content)
		f.close()

		print("Finsihed downloading\n")
		

if __name__ == '__main__':
	download()