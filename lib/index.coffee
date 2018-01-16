charlie = require './charlie'

HOLIDAYS = [
	{
		start: [10, 30]  # [month, day]
		end: [11, 1]
		doodle: require('./pumpkin')
	}
	{
		start: [12, 20]
		end: [1, 5]
		doodle: require('./charlie-christmas')
	}
]

compareArrays = (a1, a2) ->
	for i in [0...a1.length]
		if a1[i] < a2[i]
			return -1
		else if a1[i] > a2[i]
			return 1
	return 0

dateIsBetween = (date, start, end) ->
	year = date.getFullYear()
	startDate = new Date(year, start[0] - 1, start[1])
	endDate = new Date(year, end[0] - 1, end[1])
	if compareArrays(start, end) <= 0
		return startDate < date < endDate
	else
		thisYear = new Date(year, 0, 1)
		nextYear = new Date(year + 1, 0, 1)
		return (startDate < date < nextYear) or (thisYear < date < endDate)

exports.getDoodle = (date) ->
	date ?= new Date()
	for h in HOLIDAYS
		if dateIsBetween(date, h.start, h.end)
			return h.doodle
	return charlie
