# You are given the following information, but you may prefer to do some research for yourself.
#
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
#
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# 
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def yearLen(year):
	tot = 4*30 + 7*31 + 28

	if (year % 400 == 0):
		tot += 1
		return tot
	else:
		if year % 100 == 0:
			return tot
		else:
			 if year % 4 == 0:
			 	tot += 1
			 	return tot
			 else:
			 	return tot

start = 1
total = 0

week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
monthLength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for i in range(1901,2001):
	if yearLen(i) == 366:
		monthLength[1] = 29
	else:
		if yearLen(i) == 365:
			monthLength[1] = 28
	for j in monthLength:
		start += j
		if start%7 == 6:
			total += 1

print(total)


