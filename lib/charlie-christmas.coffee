colors = require 'colors/safe'
colors.enabled = true

{ blue, bold, red, white } = colors

module.exports = bold([
	blue('    \\')
	blue('     \\    ')  + white('') + red('   .,-.') + white('@')
	blue('      \\\\  ') + white(' ') + red('.^xxx-')
	blue('       \\\\,') + white('xx') + red('xxx;')
	blue('        > ')   + white(' xx') + red('x/')
	blue("    _.-(6'")   + white('  xx')
	blue('   (=___._/` \\')
	blue('        )  \\ |')
	blue('       /   / |')
	blue('      /    > /')
	blue('     j    < _\\')
	blue(" _.-' :      ``.")
	blue(' \\ r=._\\        `.')
	blue('<`\\\\_  \\         .`-.')
	blue(" \\ r-7  `-. ._  ' .  `\\")
	blue('  \\`,      `-.`7  7)   )')
	blue("   \\/         \\|  \\'  / `-._")
	blue("              ||    .'")
	blue('               \\\\  (')
	blue('                >\\  >')
	blue("            ,.-' >.'")
	blue("           <.'_.'")
	blue("             <'")
	blue('')
].join('\n').replace(/^/gm, '\t\t\t'))
