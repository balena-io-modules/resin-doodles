colors = require 'colors/safe'
colors.enabled = true

module.exports = colors.bold.blue("""
	    \\
	     \\
	      \\\\
	       \\\\
	        >\\/7
	    _.-(6'  \\
	   (=___._/` \\
	        )  \\ |
	       /   / |
	      /    > /
	     j    < _\\
	 _.-' :      ``.
	 \\ r=._\\        `.
	<`\\\\_  \\         .`-.
	 \\ r-7  `-. ._  ' .  `\\
	  \\`,      `-.`7  7)   )
	   \\/         \\|  \\'  / `-._
	              ||    .'
	               \\\\  (
	                >\\  >
	            ,.-' >.'
	           <.'_.''
	             <'
""".replace(/^/gm, '\t\t\t'))
