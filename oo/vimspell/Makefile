eo.utf-8.spl : eo.aff eo.dic
	env LANG=eo.utf-8 vim -u NONE -e -c "mkspell! eo eo" -c q 2>&1 > err

eo.aff : ../eo.aff ../eo_repl.dat ../map.txt preamble.txt
	cat preamble.txt ../eo_repl.dat ../map.txt ../eo.aff > eo.aff

eo.dic : ../eo.dic
	sed -e 's/!/?/; s%^la$$%la\nla la/!%' ../eo.dic > ./eo.d
	wc -l ./eo.d | sed -Ee 's/^ *([0-9]+)\b.*$$/\1/' | cat - ./eo.d > eo.dic

