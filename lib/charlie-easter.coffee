# With thanks to http://www.flipmytext.com/ascii/easter.php
# (Couldn't see a copyright declaration, so have derived my work from theirs)

colors = require 'colors/safe'
colors.enabled = true

{ blue, bold, magenta, white, yellow, red } = colors
###
               \
                \
                 \\
                  \\
                   >\/7
               _.-(6'  \
              (=___._/` \
                  )  \ |
                 /   / |
                /    > /
               j    < _\
            .-' :      ``.
  /`\   /`\\ r=._\        `.
 (/\ \-/ /\)\\_  \         .`-.
    )6 6(  \ r-7  `-. ._  ' .  `\
  >{= Y =}< \`,      `-.`7  7)   )
   /'-^-'\   \/         \|  \'  / `-._
  (_)""-(_).            ||    .'
 /*  ((*   *'.           \\  (
|   *))  *   *\           >\  >
| *  ((*   *  /        ,.-' >.'
 \  *))  *  .'        <.'_.''
  '-.((*_.-'            <'
###
module.exports = bold([
	blue('               \\'),
	blue('                \\'),
	blue('                 \\\\'),
	blue('                  \\\\'),
	blue('                   >\\/7'),
	blue("               _.-(6'  \\"),
	blue('              (=___._/` \\'),
	blue('                  )  \\ |'),
	blue('                 /   / |'),
	blue('                /    > /'),
	blue('               j    < _\\'),
	blue("            .-' :      ``."),
	white('  /`\\   /`\\') + blue('\\ r=._\\        `.'),
	white(' (/\\ \\-/ /\\)') + blue('\\\\_  \\         .`-.'),
	white('    )6 6(') + blue("  \\ r-7  `-. ._  ' .  `\\"),
	white('  >{= Y =}<') + blue(' \\`,      `-.`7  7)   )'),
	white("   /'-^-'\\") + blue("   \\/         \\|  \\'  / `-._"),
	white('  (_)') + magenta('""') + red('-') + white('(_)') + red('.') + blue("            ||    .'"),
	red(' /') + yellow('*') + magenta('  ((') + yellow('*   *') + red("'.") + blue('           \\\\  ('),
	red('|   ') + yellow('*') + magenta('))') + yellow('  *   *') + red('\\') + blue('           >\\  >'),
	red('| ') + yellow('*') + magenta('  ((') + yellow('*   *') + red('  /') + blue("        ,.-' >.'"),
	red(' \\  ') + yellow('*') + magenta('))') + yellow('  *') + red("  .'") + blue("        <.'_.''"),
	red("  '-.") + magenta('((') + yellow('*') + red("_.-'") + blue("            <'"),
].join('\n').replace(/^/gm, '\t\t'))
