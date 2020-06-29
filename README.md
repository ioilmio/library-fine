# library-fine

# Description
Your local library needs your help! Given the expected and actual return dates for a library book, create a program that calculates the fine (if any). The fee structure is as follows:

If the book is returned on or before the expected return date, no fine will be charged (i.e.: fine = 0)

.
If the book is returned after the expected return day but still within the same calendar month and year as the expected return date,
fine = 15 Hackos * (number of days late)
.
If the book is returned after the expected return month but still within the same calendar year as the expected return date, the
fine = 500 Hackos * (number of months late).

If the book is returned after the calendar year in which it was expected, there is a fixed fine of
10000 Hackos.
    .

Charges are based only on the least precise measure of lateness. For example, whether a book is due January 1, 2017 or December 31, 2017, if it is returned January 1, 2018, that is a year late and the fine would be 10000 Hackos
. 

## Solution

We first create some placeholder variable for our fine fees and difference for days months and years.

Then we first check if the year and month are the same but the day is different,
we will multiply the number of days late times the per_day_fine 
For the second check we will check if the year is the same but the month is different, we will multiply the month of late times the per_month_fine.
For the third check only the year, if it is the case we will just return the fixed fine.
Last if the the day is before or the same we will not charge anything.
