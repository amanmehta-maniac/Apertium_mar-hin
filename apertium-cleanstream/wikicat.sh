#!/bin/sh
# Clean up wikitext for running through apertium-destxt

# awk prints full lines, make sure each html element has one
bzcat "$@" | sed 's/>/>\
/g' | sed 's/</\
</g' |\
# want only stuff between <text...> and </text>
awk '
/<text.*>/,/<\/text>/ { print $0 }
' |\
sed 's/\./ /g' |\
# Drop all transwiki links
sed 's/\[\[\([a-z]\{2,3\}\|bat-smg\|be-x-old\|cbk-zam\|fiu-vro\|map-bms\|nds-nl\|roa-rup\|roa-tara\|simple\|zh-classical\|zh-min-nan\|zh-yue\):[^]]\+\]\]//g' |\
# wiki markup, retain bar and fie from [[foo|bar]] [[fie]]
sed 's/\[\[[^]|]*|//g' | sed 's/\]\]//g' | sed 's/\[\[//g' |\
# wiki markup, retain `bar fie' from [http://foo bar fie] and remove [http://foo]
sed 's/\[http[^ ]*\([^]]*\)\]/\1/g' |\
# remove entities
sed 's/&[^;]*;/ /g' |\
# and put space instead of punctuation
sed 's/[;:?,]/ /g' |\
# Keep only lines starting with a capital letter, removing tables with style info etc.
grep '^[ 	]*[A-ZÆØÅ]' # Your alphabet here