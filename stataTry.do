*This is a do file
*this is how to make a comment in Stata
*to delete a particular column E(Variable)
drop E
*to split a column 'Date'. the default delimiter is space
split Date
drop Date
*to generate a new variable and set it to zero
gen DoW = 0
replace Dow = 1 if Date2 == 'Monday'
replace Dow = 2 if Date2 == 'Tuesday'
replace Dow = 3 if Date2 == 'Wednesday'
replace Dow = 4 if Date2 == 'Thursday'
replace Dow = 5 if Date2 == 'Friday'
replace Dow = 6 if Date2 == 'Saturday'
replace Dow = 7 if Date2 == 'Sunday'
drop Date2
gen Date = date(Date1, 'MDY')
*to render the date into a human readable format in Stata
format %td Date
drop Date1
