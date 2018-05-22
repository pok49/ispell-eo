short_list	=	komp,etn,Eujo,mll
pok_list	=	$(short_list),bot,pok,pers,var,zoo

#eo_list	=	$(short_list),drv
eo_list		=	$(pok_list),drv
esperanto_list	=	$(pok_list),arhx,mav,rar,var
#esperanto_list	=	$(pok_list),arhx,mav,rar,var,drv
#sen		=	rar

# Exotic forms // Ekzotajxoj
# Uncomment the following if you do not need rare forms like "forirontinoj";
# that could save some 11% of the eo.hash size:
#sxparu		= 	-DSXPARE

# Where to install the *.hash files; you could try
# $ ispell -vv | grep LIBDIR
# to find it out; one possible place is this:
#install_dir=/usr/lib/ispell
# Set it manually if the following does not suit you:
install_dir=`ispell -vv | grep LIBDIR | sed 's/[^"]*\\"\([^"]*\)\\"/\1/'`

# elisp_dir	= /usr/local/share/emacs/site-lisp
# VORTOJ	= `pwd`/src/vortoj.l3
##########################
# No more user settings // Fino de la uzulaj agordajxoj.
##########################

first:
	@./tools/check
	@echo "The hash files will be installed into $(install_dir)"
	@echo "Edit Makefile; then type 'make all'"

legu-min : LEGU-MIN.l3
	LC_CTYPE=C tools/l3-al-x < LEGU-MIN.l3 > legu-min

# all :	ordigo eo esperanto OO
all :	ordigo eo esperanto
	@echo
	@echo "Now you can 'make install' (if you have the appropriate permissions)"

ordigo:
#	$(MAKE) -C src
	cd src && $(MAKE)

OO :	ordigo
	cd work && $(MAKE) eooo eo_list=$(eo_list) sxparu=$(sxparu)

eo :	ordigo
#	$(MAKE) -C work eo.hash
	cd work && $(MAKE) eo.hash eo_list=$(eo_list) \
	sxparu="-DSXPARE" sen="mav,rar,$(sen)"

esperanto :	ordigo
#	$(MAKE) -C work esperanto.hash
	cd work && $(MAKE) esperanto.hash esperanto_list=$(esperanto_list)

check_diff :
	tools/slovnik src/vortoj.l3 > work/slovnik.tex

install:
	cp work/*.hash $(install_dir)

tar :	clean
	LC_CTYPE=C cd .. && tar cvf - ispell-eo | gzip -9v > espaff.tgz

dist :	distclean
	LC_CTYPE=C cd .. && \
	tar --exclude-vcs --exclude oo --exclude *.elc -cvjf - ispell-eo>ispelleo.tar.bz2

distclean :
#	$(MAKE) -C work distclean
	rm -f *~
	cd work && $(MAKE) distclean
	rm -f doc/legu-min

clean :
#	$(MAKE) -C work clean
	cd work && $(MAKE) clean

