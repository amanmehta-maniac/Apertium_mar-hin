#!/bin/sh
# http://wiki.apertium.org/wiki/Asturian#Calculating_coverage

# Calculate the number of tokenised words in the corpus:
apertium-destxt | lt-proc $1 |apertium-retxt |\
# for some reason putting the newline in directly doesn't work, so two seds
sed 's/\$[^^]*\^/$^/g' | sed 's/\$\^/$\
^/g' 