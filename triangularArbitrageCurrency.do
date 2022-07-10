*from existing file containing exchange rate of 3 different currencies 
*we want to do triangular arbitrage to take advantage of the little discrepancies  in exchanges.
*</gryftherin>
*generate a variable for Triangular arbitrage
gen triangleArb = USDtoJPY * JPYtoTHB
*to check if this works and is profitable
gen arbProfit = USDtoTHB - triangleArb
*to check the profit on every 1 Million dollars converted directly or indirectly
gen arbProfit_USD = 0
replace arbProfit_USD = 100000*abs(arbProfit) - 9
*now one need to consider the trading cost ans so has to ensure that the profit far exceeds the trading cost(commision)
*this program assumes that the trading cost is $9 per $1Million
*to check the profitablility, you want to check the EDA (sum, Average etc. of arbProfit)
sum arbProfit_USD
* </gryftherin> One can also set a condition for trading to only trade when abs(arbProfit) > (9/1000000) or trade only when profit is greater than $50
replace arbProfit_USD = 0 if arbProfit_USD < 50
*taking a buy / nobuy decision
gen buyDecision = 0
replace buyDecision = 1 if arbProfit_USD > 50

