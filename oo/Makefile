vim :	myspell
	cd vimspell && $(MAKE) eo.utf-8.spl

hun : 	apostrophe eo.aff eo.dic
	cd ../hunspell && $(MAKE) hun

myspell : eo.aff eo.dic

apostrophe :
	[ -f apostrofo.txt ] && [ `cat apostrofo.txt` == $(apostro) ] || \
	echo $(apostro) > apostrofo.txt

eo.dic : apostrofo.txt ../src/vortoj.l3 ../tools/filtroo
	../tools/filtroo "$(eo_list)" eo.dic $(apostro)
	@echo "OO eo.dic is ready."

eo.aff : apostrofo.txt ../src/eo-aff.m4 ../tools/cleanaff ../emacs/oo.el eo_repl.dat
	m4 $(sxparu) ../src/eo-aff.m4 | ../tools/cleanaff | iconv -f L3 -t UTF8 > eo.aff
	emacs -batch eo.aff -l ../emacs/oo.el -f save-buffer
	@echo "OO eo.aff is ready."

distclean : clean
	-rm -f *.hash *.aff *.dic *.spl

clean :
	-rm -f *~ *tmp*

