all :	eo.hash esperanto.hash eooo

eo.hash :	eo.aff eo.asc
	buildhash eo.asc eo.aff eo.hash
	@echo "La rigora eo.hash pretas."

esperanto.hash : esperanto.aff esperanto.asc
	buildhash esperanto.asc esperanto.aff esperanto.hash
	@echo "La permesema esperanto.hash pretas."
eooo :	eo_l3.aff eo_l3.dic

eo.aff : ../src/eo-aff.m4
	m4 $(sxparu) ../src/eo-aff.m4 | ../tools/cleanaff | ../tools/askiigu > eo.aff
	@echo "eo.aff generita kun sxparu='$(sxparu)'"

esperanto.aff : ../src/eo-aff.m4
	m4 -DLOZE ../src/eo-aff.m4 | ../tools/cleanaff | ../tools/askiigu > esperanto.aff

eo.asc : ../src/vortoj.l3
	../tools/filtru "$(eo_list)" eo.asc

esperanto.asc : ../src/vortoj.l3
	../tools/filtru "$(esperanto_list)" esperanto.asc

eo_l3.dic : ../src/vortoj.l3
	../tools/filtroo "$(eo_list)" eo_l3.dic
	@echo "OpenOffice eo_l3.dic file is ready."

eo_l3.aff : ../src/eo-aff.m4
	m4 $(sxparu) ../src/eo-aff.m4 | ../tools/cleanaff > eo_l3.aff
	emacs -batch eo_l3.aff -l ../emacs/oo.el -f save-buffer
	@echo "OpenOffice eo_l3.aff file is ready."

distclean : clean
	-rm -f *.hash *.aff *.asc *.dic

clean :
	-rm -f *.cnt *.stat *.asc *~ *tmp

