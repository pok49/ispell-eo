vim :	eo.spl

eo.spl : myspell
	env LANG=eo.utf-8 vim -u NONE -e -c "mkspell! eo eo" -c q err

myspell : eo.aff eo.dic

eo.dic : ../src/vortoj.l3 ../tools/filtroo
	../tools/filtroo "$(eo_list)" eo.dic
	@echo "OpenOffice eo.dic file is ready."

eo.aff : ../src/eo-aff.m4 ../tools/cleanaff ../emacs/oo.el
	m4 $(sxparu) ../src/eo-aff.m4 | ../tools/cleanaff > eo.aff
	emacs -batch eo.aff -l ../emacs/oo.el -f save-buffer
	@echo "OpenOffice eo.aff file is ready."

distclean : clean
	-rm -f *.hash *.aff *.dic *.spl

clean :
	-rm -f *~ *tmp*

