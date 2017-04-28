charlie = require './charlie'
pumpkin = require './pumpkin'
charlieChristmas = require './charlie-christmas'
charlieEaster = require './charlie-easter'

YEAR = new Date().getFullYear()

HALLOWEEN_START = new Date(YEAR, 9, 30)
HALLOWEEN_END = new Date(YEAR, 10, 1)

CHRISTMAS_START = new Date(YEAR, 11, 20)
CHRISTMAS_END = new Date(YEAR, 0, 5)

EASTER_START = new Date(YEAR, 2, 21)
EASTER_END = new Date(YEAR, 3, 26)

exports.getDoodle = (timestamp) ->
	timestamp ?= Date.now()

	if HALLOWEEN_START < timestamp  < HALLOWEEN_END
		return pumpkin
	else if CHRISTMAS_START < timestamp  < CHRISTMAS_END
		return charlieChristmas
	else if EASTER_START < timestamp < EASTER_END
		return charlieEaster
	else
		return charlie
