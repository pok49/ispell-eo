vim :	myspell
	cd vimspell && $(MAKE) eo.utf-8.spl

myspell : eo.aff eo.dic

eo.dic : ../src/vortoj.l3 ../tools/filtroo
	../tools/filtroo "$(eo_list)" eo.dic $(apostro)
	@echo "OpenOffice eo.dic file is ready."

eo.aff : ../src/eo-aff.m4 ../tools/cleanaff ../emacs/oo.el eo_repl.dat
	m4 $(sxparu) ../src/eo-aff.m4 | ../tools/cleanaff | iconv -f L3 -t UTF8 > eo.aff
	emacs -batch eo.aff -l ../emacs/oo.el -f save-buffer
	@echo "OpenOffice eo.aff file is ready."

distclean : clean
	-rm -f *.hash *.aff *.dic *.spl

clean :
	-rm -f *~ *tmp*

