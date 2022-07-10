*from existing file containing company values for different companies (EBITDA, cash, liabilities etc.)
*</gryftherin>
*to execute a regression in stata between variables
reg totalAssets Cash EBITDA CurrentLiabilities RetainedEarnings EquityBookValue InterestExpense
*to restrict the regression to a year data or data from the same period
xtset Year
xtreg totalAssets Cash EBITDA CurrentLiabilities RetainedEarnings EquityBookValue InterestExpense
