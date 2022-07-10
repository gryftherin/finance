from tkinter import Grid
import pandas as pd
import pandas_datareader as pdr
import datetime
from pandas_datareader import data
pd.core.common.is_list_like = pd.api.types.is_list_like
#getting stock data from yahoo for Microsoft
#df = data.get_data_yahoo('MSFT','2019-01-01','2020-01-01')
#print(df.head())
#print (df.describe())
import quandl
#aapl = quandl.get('WIKI/AAPL' ,start_date = '2014-01-01', end_date = '2015-01-01')
#print(aapl.head())
#print(aapl.describe())
#aapl = pdr.get_data_yahoo('AAPl', start = datetime.datetime(2008,1,1), end = datetime.datetime(2012,1,1))
#print (aapl.head())
#aapl.to_csv('aapl stock data.csv')
#download_aapl = 'AAPLCSV.csv
#aapl['Change'] = aapl.Open - aapl.Close
#aapl ['Pct_Chg'] = aapl.Change*100/aapl.Open
#print (aapl.head())
import matplotlib.pyplot as plt
#aapl['Pct_Chg'].plot(grid = True)
#plt.show


def get(tickers, startdate, enddate):
    def data(ticker):
        return(pdr.get_data_yahoo(ticker, start = startdate, end = enddate))
    datas = map(data,tickers)
    return(pd.concat(datas, keys=tickers, names=['Ticker', 'Date']))

tickers = ['MSFT', 'CRM', 'GE', 'MMM']
all_data = get(tickers, datetime.datetime(2015,1,1), datetime.datetime(2019,1,1))
#print (all_data)
all_data.to_csv('C:/Users/Mubarak Abdulhameed/Downloads/alldata_trading4.csv') #I saved it as a csv file on my laptop

