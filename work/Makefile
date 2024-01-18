all :	eo.hash esperanto.hash

eo.hash : eo.aff eo.asc
	buildhash eo.asc eo.aff eo.hash
	@echo "La rigora eo.hash pretas."

esperanto.hash : esperanto.aff esperanto.asc
	buildhash esperanto.asc esperanto.aff esperanto.hash
	@echo "La permesema esperanto.hash pretas."

eo.aff : ../src/eo-aff.m4 ../tools/askiigu ../tools/cleanaff
	m4 $(sxparu) ../src/eo-aff.m4 | ../tools/cleanaff | ../tools/askiigu > eo.aff
	@echo "eo.aff generita kun sxparu='$(sxparu)'"

esperanto.aff : ../src/eo-aff.m4 ../tools/askiigu ../tools/cleanaff
	m4 -DLOZE ../src/eo-aff.m4 | ../tools/cleanaff | ../tools/askiigu > esperanto.aff

eo.asc : ../src/vortoj.l3 ../tools/filtru
	../tools/filtru "$(eo_list)" eo.asc

esperanto.asc : ../src/vortoj.l3 ../tools/filtru
	../tools/filtru "$(esperanto_list)" esperanto.asc

distclean : clean
	-rm -f *.hash *.aff *.asc *.dic

clean :
	-rm -f *.cnt *.stat *.asc *~ *tmp

