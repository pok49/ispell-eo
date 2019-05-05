# -*- coding: latin-3 -*-
divert(-1)
#§ 			ABOUT THIS FILE
Name: eo-aff.m4
# Time-stamp: <2018-06-11 15:29:59 sergio>
define(Versio, `# Versio:	3.8')


# This file eo-aff.m4 contains macros for Ispell affix file for
# Esperanto (required for generating Ispell hash table).  The macros
# are written in m4, the standard Unix macro processor.

# In order to generate the permissive (loose, LOZE) esperanto.aff
# file, run
#	m4 -DLOZE eo-aff.m4 > esperanto.aff
# In order to generate the strict eo.aff file, run
#	m4 eo-aff.m4 > eo.aff

#§                      AFIKSAJ MAKROOJ:
changequote({, })
##-- la nomoj:

# Por fari la 3 kromajn kazformojn el preta nominativo:
define(ka3oj,{$1J
    $1JN
    $1N})

# Por fari cxiujn kazojn el alikategoria bazo:
define(kazoj,{$1
    ka3oj({$1})})

#-- il-makroo (por ne zorgi pri komo se nenio estas forprenenda):
define(anst1,{ifelse({},{$1},{},{$1,})})

## La anst-parojn kiel "-I,IGI" eblus optimigi en la GNUa m4 (por
## progukti la nuran "GI"): 
# define(anst2,
# {ifelse({},{$1},{$2},
#         regexp({-$2},{^$1}),{-1},{$1,$2},
#         regexp({-$2},{^$1\(.*\)$},{\1}))})
## --- tamen pro transporteblo ni tion lasu al aparta sed-paso:
#
define(anst2,{ifelse({},{$1},{$2},{$1,$2})})

define(subst,{$1	>	anst1({$2})$3'
    kazoj({$1	>	anst2({$2},$3O)})})

# "nomo" estas "substantivo" aux "adjektivo":
define(nomo,{kazoj({$1	>	anst2({$2},$3A)})
    subst($@)})

# "nome" estas "substantivo" aux "adjektivo" aux "adverbo" (E-vorto):
define(nome,{kazoj({$1	>	anst2({$2},{$3A})})
    $1	>	anst1({$2})$3E
    subst($@)})

# "nome1" estas "substantivo 1nombra" aux "adjektivo" aux "adverbo" (E-vorto):
define(nome1,{kazoj({$1	>	anst1({$2})$3A})
    $1	>	anst1({$2})$3E
    ifdef({LOZE},{subst($@)},
{   $1	>	anst1({$2})$3O
    $1	>	anst1({$2})$3ON})})

ifdef({LOZE},
{define(adj,{nome($@)})},
{define(adj,{kazoj({$1	>	anst2({$2},{$3A})})
    $1	>	anst1({$2})$3E
    $1	>	anst1({$2})$3'
    $1	>	anst1({$2})$3O
    $1	>	anst2({$2},$3ON)})})

define(Adj,{adj($@)
ifdef({LOZE},{
    subst({$1},{$2},{$3EC})})})

#-- la verboj:
define(A_s,{$1AS
    $1IS
    $1OS
    $1US})

define(x_s,{$1I
    A_s({$1})
    $1U})

define(ntinoj,{nome($1,-$2,$3INT)
    nome($1,-$2,$3ANT)
    nome($1,-$2,$3ONT)
ifdef({SXPARE},{#Sxparu ntinojn},
{   nomo($1,-$2,$3INTIN)
    nomo($1,-$2,$3ANTIN)
    nomo($1,-$2,$3ONTIN)})})

define(ntr,{nome(I,-I,AD)
    x_s({I >	-I,AD})
 A_s({I >	-I,})
    I	>	-I,U
    ntinoj(I,I)
#    Adj(I,-I,EM)	    # petolema
    nome(U,-U,AD)
    x_s({U >	-U,AD})
    A_s({U >	-U,})
    U	>	-U,I
    ntinoj(U,U)
    I	>	-I,O	    #substantivo ununombra: dormi -> dormo
    I	>	-I,ON
    U	>	-U,O
    U	>	-U,ON})

# la pasivaj participoj {a,i,o}taj:
define(toj,{nome($1,-$1,$2IT)
    nome($1,-$1,$2AT)
    nome($1,-$1,$2OT)
    A_s({$1 >	-$1,$2EBL})
    Adj($1,-$1,$2EBL)
    A_s({$1 >	-$1,$2END})
    nome($1,-$1,$2END)})

define(aff_name,{ifdef({LOZE}, {esperanto}, {eo}).aff})
#----------  LA AFIKSAJ REGULOJ:
divert(0)dnl
{# Nomo:}		aff_name
# Funkcio:	Afiksaro por Esperanto-vortaro
# Komencita:	1997-08-30 de Sergio Pokrovskij <sergio.pokrovskij(æe)gmail.com>
Versio
{# Generita:}	esyscmd(date)
#
# Copyright 1997 -- 2012 Sergio Pokrovskij
#
#  This file is available on the terms of GNU General Public License
#  (Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA).
#	Affix table for Esperanto
#
# The default 32 MASKBITS is no longer ispell are sufficient --
# now you need MASKBITS=64.

#§		        KODOPREZENTOJ (Encodings):
ifdef({LOZE}, {compoundwords on})
allaffixes on

# generic accents as used in esperanto word list
# All other types are defined relative to this one.
changequote(/*, */})

# TeX/LaTeX laux esperanto.sty
defstringtype "tex" "TeX" ".tex" ".bib"
#
#boundarychars	[---]
#boundarychars	[-]
#
stringchar	'
wordchars	\-
wordchars	a	A
stringchar  \\\"a   \\\"A
stringchar   \\'a    \\'A
wordchars     [bc]    [BC]
stringchar     ^c      ^C
stringchar  \\c{c}  \\c{C}
#stringchar  \\v{c}  \\v{C}
wordchars	d	D
stringchar   \\'e    \\'E
wordchars    [d-g]   [D-G]
stringchar     ^g      ^G
wordchars	h	H
stringchar     ^h      ^H
wordchars     [ij]    [IJ]
stringchar     ^j      ^J
wordchars    [k-o]   [K-O]
stringchar  \\\"o   \\\"O
stringchar   {\\o}   {\\O}
wordchars    [p-s]   [P-S]
stringchar     ^s      ^S
wordchars     [tu]    [TU]
stringchar     ^u      ^U
#stringchar   \\^u    \\^U
stringchar  \\\"u   \\\"U
wordchars    [v-z]   [V-Z]

altstringtype "utf8" "tex" ".html" ".u8" ".utf"
#
altstringchar	\xE2\x80\x99 '
altstringchar	\xC4\x88    ^C
altstringchar	\xC4\x89    ^c
altstringchar	\xC4\x9C    ^G
altstringchar	\xC4\x9D    ^g
altstringchar	\xC4\xA4    ^H
altstringchar	\xC4\xA5    ^h
altstringchar	\xC4\xB4    ^J
altstringchar	\xC4\xB5    ^j
altstringchar	\xC5\x9C    ^S
altstringchar	\xC5\x9D    ^s
altstringchar	\xC5\xAC    ^U
altstringchar	\xC5\xAD    ^u
altstringchar	\xC3\x81  \\'A
altstringchar	\xC3\xA1  \\'a
altstringchar	\xC3\x84 \\\"A
altstringchar	\xC3\xA4 \\\"a
altstringchar	\xC3\x87 \\c{C}
altstringchar	\xC3\xA7 \\c{c}
#altstringchar	\xC4\x8C \\v{C}
#altstringchar	\xC4\x8D \\v{c}
altstringchar	\xC3\x89  \\'E
altstringchar	\xC3\xA9  \\'e
altstringchar	\xC3\xB6 \\\"o
altstringchar	\xC3\x96 \\\"O
altstringchar	\xC3\xB8  {\\o}
altstringchar	\xC3\x98  {\\O}
altstringchar	\xC3\xBC \\\"u
altstringchar	\xC3\x9C \\\"U

altstringtype "latin3" "nroff" ".l3"
#
altstringchar	'       '
altstringchar	\xE6	^c
altstringchar	\xF8	^g
altstringchar	\xB6	^h
altstringchar	\xBC	^j
altstringchar	\xFE	^s
altstringchar	\xFD	^u
altstringchar	\xC6	^C
altstringchar	\xD8	^G
altstringchar	\xA6	^H
altstringchar	\xAC	^J
altstringchar	\xDE	^S
altstringchar	\xDD	^U
altstringchar	\xC1  \\'A
altstringchar	\xC4 \\\"A
altstringchar	\xC7 \\c{C}
altstringchar	\xC9  \\'E
altstringchar	\xD6 \\\"O
#altstringchar	\xDB  \\^U
altstringchar	\xDC \\\"U
altstringchar	\xE1  \\'a
altstringchar	\xE4 \\\"a
altstringchar	\xE7 \\c{c}
altstringchar	\xE9  \\'e
altstringchar	\xF6 \\\"o
#altstringchar	\xFB  \\^u
altstringchar	\xFC \\\"u

altstringtype "cxirkaux" "nroff" ".t"
#
altstringchar	'       '
altstringchar	cx	^c
altstringchar	gx	^g
altstringchar	hx	^h
altstringchar	jx	^j
altstringchar	sx	^s
altstringchar	ux	^u
altstringchar	Cx	^C
altstringchar	Gx	^G
altstringchar	Hx	^H
altstringchar	Jx	^J
altstringchar	Sx	^S
altstringchar	Ux	^U
altstringchar	\xC1  \\'A
altstringchar	\xC4 \\\"A
altstringchar	\xC7 \\c{C}
#altstringchar	\xC9  \\'E
altstringchar	\xD6 \\\"O
#altstringchar	\xD8  {\\O}
#altstringchar	\xDB  \\^U
altstringchar	\xDC \\\"U
altstringchar	\xE1  \\'a
altstringchar	\xE4 \\\"a
altstringchar	\xE7 \\c{c}
#altstringchar	\xE9  \\'e
altstringchar	\xF6 \\\"o
#altstringchar	\xF8  {\\o}
#altstringchar	\xFB  \\^u
altstringchar	\xFC \\\"u

changequote({, })
# Here ends the encoding specification


#§			Quick Reference
#			===============
#
#   A	-a, -e
#   a	al-
#   B	-em[aeo]
#   b	mem-
#   C	-eC
#   c	æef-	episkopo -> æefepiskopo
#   D	-inD[aeio]
#   d	de-
#   E	-a, -e, nE--a, ne--E
#   e	-et, -eg (samkategiria kiel la finajxo)
#   F	-ino + -o; -ina + -a; POST -i: -i > antino (kundanci -> kundancantino)
#   f	for-	iri -> foriri
#   G	-iGi, -igo: -A, -I, -O, -U
#=============
#   H	-uj[ao]jn
#   h	duon- 	(half-)
#   I	-[e] > ~a + -io + -ia (teolog[i]o, filozof[i]o...)
#	-io > ~io + ~o (Algxerio/I -> Algxero, Algxerio)
#	-iana/I > ~ano, ~anion (algxeriana/FI > algxerano, algxeranino)
#	-ujana/I > ~ianon (rusujana/FI > rusianino)
#	-ujo > ~io + ~o (Rusujo/I -> Rusio)
#   i	{m,v,l,sx,gx,s,n,il}ia-, iu-, æiu-:	parte -> niaparte
#   J	-eJ[ao]jn
#   j	kun-	 veni -> kunveni {plurmonbrigxi, igxi kuna*j*}
#   K	Kolektoj: ar[ao]jn: -A, -I, -O
#   k	ek-
#   L	-i > -iLo, -a > igiLo (atentu transirIGon!!), -o > -iLo
#   l	el-
#   M	Mal-
#   m	mal- nemal-
#   N	Nombro: unu-, du-, plur-, multe-
#   n	{ali-,sam-,sen-,ambaux-,cxiu-,iu-}
#   O	-o; ankaý deklinacias -a/vortojn (por senadjektivaj paradigmoj)
#   o	æirkaý-
#   p	pri-
#   P	Pronomoj (mi, iu); jn (gefilan, gefilojn; Alpa[j][n], Alpoj[n]); A->EN
#   Q	-iØi, -iøo;
#   q	kontraý-
#   R	Re-
#   r   inteR-
#   S	-iSt + -istino (la rusa -iSt); -isme > isto
#   s	sen-
#   T	transiraj verboj
#   t	trans-
#   U	-ul<in>[aeo]
#   u	pra- (kp G ur-)
#   V	Verbo (netransira): -i, -a, -as
#   v	 en-
#   W	-an<in>[ao]
#   w   laý-
#   X	aldonu trunkigon (apuda/AX -> apud, apuda...); igi > iøi
#   x	eks-
#   Y	-a¼o
#   y	mis-
#   Z	-ism (la rusa -iZm)
#   z	dis- (germana zer-, rusa raZ-)
#   [	antaý-
#   ]	post-
#   _	sub:  teni -> subteni
#   ^	super-
#   `	sur-
#   \   tra-

# Mankas flagoj por GE-, -ER, FIN-, NOV-, TUT-, ØIS-, ÆE-, PER-, -ITA¬ ...

#§		        LA PREFIKSOJ:
prefixes

flag *a:
    .		>	AL		# tiri -> altiri
					  
flag *b:
    .		>	MEM
					  
flag *c:				  
    .		>	ÆEF		# episkopo -> æefepiskopo
					  
flag *d:				  
    .		>	DE		# meti -> demeti
					  
flag *E:				  
    .		>	NE		# bona -> nebona
					  
flag *f:				  
    .		>	FOR		# iri -> foriri
					  
flag *h:				  
    .		>	DUON		# duonbrido, duondio, duoninsulo
					  
flag *i:				  
    .		>	MIA		# parte -> miaparte
    .		>	VIA
    .		>	LIA
    .		>	ÞIA
    .		>	ØIA
    .		>	SIA
    .		>	NIA
    .		>	ILIA
    .		>	IU
    .		>	ÆIU

flag *j:				  
    .		>	kun		# veni -> kunveni

flag *k:				  
    .		>	EK		# scii -> ekscii

flag *l:				  
    .		>	EL		# uzi -> eluzi

flag *M:				  
    .		>	MAL		# bona -> malbona

flag *m:				  
    .		>	MAL		# bona -> malbona
    .		>	NEMAL		# bona -> nemalbona

define(n2_9,{$1DU
    $1TRI
    $1KVAR
    $1KVIN
    $1SES
    $1SEP
    $1OK
    $1NAÝ})
flag *N:
    .		>	UNU		# kiel unuflanka, unufoja
    n2_9({.	>	})
    .		>	DEK
    .		>	CENT
    .		>	MIL
    .		>	KELK
    .		>	DEKKELK
    .		>	PLUR
    [AEIJOUFLS]	>	MULT
    [^AEIJOU]	>	MULTE
    n2_9({D E K	>	})

flag *n:
    .		>	ÆI\-
    .		>	ÆIU
    .		>	TIU

flag *o:				  
    .		>	ÆIRKAÝ

flag *p:				  
    .		>	PRI		# prilabori

flag *q:				  
    .		>	KONTRAÝ	# kontraýsimetria

flag *R:
    .		>	RE		# fari -> refari
					  
flag *r:
    .		>	INTER
					  
flag *s:				  
    .		>	SEN		# senca -> sensenca

flag *t:				  
    .		>	TRANS		# meti -> transmeti

flag *u:				  
    .		>	PRA

flag *v:				  
    .		>	EN		# iri -> eniri

flag *w:				  
    .		>	LAÝ

flag *x:				  
    .		>	EKS		# prezidento -> eksprezidento

flag *y:				  
    .		>	MIS

flag *z:				  
    .		>	DIS		# iri -> disiri (kp zer-, raZ-)

flag *\\:				  
    .		>	TRA		# piki -> trapiki

flag *_:				  
    .		>	SUB

flag *^:				  
    .		>	SUPER

flag *`:				  
    .		>	SUR

flag *\[:				  
    .		>	ANTAÝ		# æambro -> antaýæambro

flag *\]:				  
    .		>	POST


#§		        LA SUFIKSOJ:
					  
suffixes
flag *A:
    A		>	-A,E
    ka3oj({A	>	})
    kazoj({I	>	-I,A})
    I		>	-I,E
    kazoj({O	>	-O,A})
    O		>	-O,E
    kazoj({U	>	-U,A})
    U		>	-U,E
    kazoj({O N	>	-ON,A})	# Nord-Amerikon => Nord-Amerikajn
    O N		>	-ON,E
    kazoj({'    >	-',A})	# Betle¶em'/AX

flag *B:
    Adj(A,-A,EM)
    Adj(I,-I,EM)
    Adj(O,-O,EM)

flag *C:
    adj(A,-A,EC)
    adj(I,-I,EC)
    adj(O,-O,EC)

flag *D:		# -inDa
    Adj(A,-A,IND)
    subst(A,-A,INDA¬)
    ifdef({LOZE},{subst(A,-A,NDEC)})
    A_s({A	>	-A,IND})
    Adj(I,,ND)
    subst(I,,NDA¬)	# ridindajxo
    ifdef({LOZE},{subst(I,,NDEC)})
    A_s({I	>	ND})

flag *E:
    A		>	-A,E
    ka3oj({A	>	})
    kazoj({O	>	-O,A})
    O		>	-O,E

flag e:
   nome(A,-A,EG)	# bela -> belega
   nome(A,-A,ET)	# bela -> beleta
   nomo(O,-O,EG)
   nomo(O,-O,ET)
   x_s({I >	-I,EG})	# ridi -> ridegi
   x_s({I >	-I,ET})
   I	>	-I,EGO
   I	>	-I,EGON
   I	>	-I,ETO
   I	>	-I,ETON
   x_s({U >	-U,EG})
   x_s({U >	-U,ET})
   U	>	-U,EGO
   U	>	-U,EGON
   U	>	-U,ETO
   U	>	-U,ETON

flag *F:
    A		>	-A,E
    A		>	-A,INE
    kazoj({A	>	-A,INA})
    ka3oj({A	>	})
    kazoj({A	>	-A,INO})
    kazoj({A	>	-A,O})
    nome(E,-E,IN)	# agronome/FI -> agronomine
ifdef({SXPARE},
{   nome(I,-I,ANTIN)	# danci -> dancantino
    nomo(I,,NTIN)	# naski -> naskintino
    nome(U,-I,ANTIN)	# dancu -> dancantino
    nomo(U,,NTIN)})	# nasku -> naskintino
    kazoj({O	>	-O,A})
    O		>	-O,E
    O		>	-O,INE
    kazoj({O	>	-O,INA})
    subst(O,-O,IN)
    O           >       -O,'
    ka3oj({O	>	})

flag *G:	# IG-verboj
    x_s({A >	-A,IG})
    ntinoj(A,A,IG)
    nome(A,-A,IG)

    toj(A,IG)	# pas. part.

    x_s({A >	-A,IGAD})
    nome(A,-A,IGAD)

    nome(I,,GAD)
    x_s({I >	GAD})
    x_s({I >	G})
    ntinoj(I,I,IG)
    nome(I,,G)
    toj(I,IG)
    nome(U,-U,IGAD)
    x_s({U >	-U,IGAD})
    x_s({U >	-U,IG})
    ntinoj(U,U,IG)
    nome(U,-U,IG)
    toj(U,IG)

    x_s({O >	-O,IG})
    ntinoj(O,O,IG)
    nome(O,-O,IG)
    toj(O,IG)
    x_s({O >	-O,IGAD})
    nome(O,-O,IGAD)

flag H:

    nome(A,-A,UJ)
    nome(I,-I,UJ)
    nome(O,-O,UJ)

flag *I:
    A	>	-A,E
#    nome(A,-A,I)
    kazoj({A >	-A,O})
    ka3oj({A >	})
    nomo(E,-E)
    nome(E,-E,I)
    nome(E,-E,IA¬)
    nome(I,-I)
    nomo(I)
#    kazoj({O >	-O,A})  # ne estu tiaj -- krom "Landujo"j
#    O	     >	-O,E    # por cxi tiuj estu minusklaj adjektivoj
#   [^I] O   >	-O,IA ### eraro! kp meksikiano/FI
    O        >  N       # Rusujo -> Rusujon, Babilono -> Babilonon
    [^J] O   >	-O,IO   # Meksiko -> Meksikio
    [^J] O   >	-O,ION
    ifdef({LOZE},{ka3oj({O >	})
    nomo({U J O},-UJO,I)},
{   U J O       > -UJO,IO       # Rusujo -> Rusio
    U J O       > -UJO,ION})
    
    kazoj({I A N A      > -IANA,A})     # algxeriana -> algxera
    I A N A      > -IANA,E     		# algxeriana -> algxere
    kazoj({I A N A      > -IANA,IA})    # algxeriana -> algxeria
    I A N A      > -IANA,IE    		# algxeriana -> algxerie
    nome({I A N A},-IANA,AN)            # algxeriana -> algxeranoj
    nome({I A N A},-IANA,ANIN)

    nome({U J A N O},-UJANO,IAN)        # rusujano -> rusianoj
    nome({U J A N O},-UJANO,IANIN)
    kazoj({U J A N O	> -UJANO,UJA})	# rusujano -> rusuja
    U J A N O	> -UJANO,UJE		# rusujano -> rusuje
    kazoj({U J A N O	> -UJANO,IA})	# rusujano -> rusia
    U J A N O	> -UJANO,IE		# rusujano -> rusie

flag *J:

    nome(A,-A,EJ)
    nome(I,-I,EJ)
    nome(O,-O,EJ)

flag K:

    nome(A,,R)
    nome(I,-I,AR)
    nome(O,-O,AR)

flag L:			# no *: æerpi/AdLlQT_ > æerpilo, sed ne el~ilo!

    nome(A,-A,IGIL)
    nome(I,,L)
    nome(O,-O,IL)	# glacirompo/L, TTT-servo/L

flag *O:

    subst(A,-A)
    ka3oj({A >	})
    subst(I,-I)
    O	> -O,'
    ka3oj({O >	})
    O J		>	-OJ,E	# gepatroj -> gepatre
    O J		>	N
    kazoj({O J	> 	-OJ,A})
    subst(U,-U)


flag *P:
    A		>	-A,EN	# latina -> latinen 
    [EIJOU]	>	N       # min
    A J		>	-AJ,E	# diverslokaj -> diversloke
    [AU]	>	J
    [AU]	>	JN
    [^AJEOU]	>	E   # mie, tiome, tiele
    kazoj({[^AJEOU] >	A}) # mia, antauxa, ioma, sed ne io-a, iu-a...
#   [^IJEAOU]	>	A   # kioma ## estas radikoj "KIOMA" ktp
#   kazoj({[^IJEAOU] >	O}) # kiomo(n)

flag *Q:	# IØ-verboj

    x_s({I >	Ø})
    ntinoj(I,I,IØ)
    nome(I,,Ø)
    nome(I,,ØEM)
    nome(I,,ØAD)
    x_s({I >	ØAD})

    x_s({U >	-U,IØ})
    ntinoj(U,U,IØ)
    nome(U,-U,IØ)
    nome(U,-U,IØEM)
    nomo(U,-U,IØAD)
    x_s({U >	-U,IØAD})

    x_s({A >	-A,IØ})
    ntinoj(A,A,IØ)
    nome(A,-A,IØ)
    nome(A,-A,IØEM)
    nome(A,-A,IØAD)
    x_s({A >	-A,IØAD})
    x_s({O >	-O,IØ})
    ntinoj(O,O,IØ)
    nome(O,-O,IØ)
    nome(O,-O,IØEM)
    nome(O,-O,IØAD)
    x_s({O >	-O,IØAD})

flag S:		# no *: agordi/TSy > agordisto, sed ne misagordisto

    nome(O,-O,IST)		# atentu ISME > ISTO !!
    nome(O,-O,ISTIN)
    nome(A,-A,IST)
    nome(A,-A,ISTIN)

    nome({O N},-ON,IST)		# biblisciencon/ASX
    nome({O N},-ON,ISTIN)

    nome(I,,ST)
    nome(I,,STIN)

    nome({I S M E},-ME,T)	# kiel þovinisme > þovinisto
    nome({I S M E},-ME,TIN)
    nomo({I S M E},-E)

    nome({[^M] E},-E,IIST)	# kiel bibliografe > bibliografiisto
    nome({[^M] E},-E,IISTIN)

    nome({N O M E},-E,IIST)	# kiel astronome > astronomiisto
    nome({N O M E},-E,IISTIN)


flag *T:	# verboj (kun la pasivo); ekz-e fari/IT
    x_s({A	>	-A,})	   # kiel: cii, ciado
    nome(A,,NT)
    nome(A,,T)
    A	>	DO
    A	>	DON

    ntr
    toj(I)		    # pasivo:
    toj(U)		    # pasivo:

flag *U:
    nome(A,-A,UL)
    nome(A,-A,ULIN)
    nome(O,-O,UL)
    nome(O,-O,ULIN)
    nome(I,-I,UL)
    nome(I,-I,ULIN)

flag *V:	# verboj (sen la pasivo); ekz-e esti/V
    x_s({A	>	-A,})	   # noktis, grandas
#    nome(A,,NT)
    A S	>	-AS,IS	   # tempas > tempis
    A S	>	-AS,OS
    A S	>	-AS,U      # kohera => koheru
    A S	>	-AS,US
    A S	>	-AS,I	   # objektivas > objektivi
    nome(O,-O,AD)	   # pontifiko > pontifikado

    ntr
    
#    Adj(I,,ND)		    # ridinda
#    nomo(I,,NDA¬)	    # ridindajxo
#    ifdef({LOZE},{subst(I,,NDEC)})

flag *W:
    nome(O,-O,AN)
    nome(O,-O,ANIN)
    nome(A,,N)
    nome(A,,NIN)
    nome(I,-I,AN)
    nome(I,-I,ANIN)
    nome(O N,-ON,AN)     # rusoismon/AXW, sen "rusoismoj"
    nome(O N,-ON,ANIN)
flag *X:
    A	     >	-A,-
    E	     >	-E,-
    J	     >	-J,-
    N	     >	-N,-
    O	     >	-O,-
    O N	     >	-ON,'           # Konstantinolon/X, sed NE nuda Konstantinopol
    [^G] I   >	-I,-

    '	     >	-',-		# Kapernaum'/X, eventuale la nuda Kapernaum
    '	     >	-',O
    '	     >	-',ON

    x_s({I G I >	-GI,Ø})
    x_s({I G I >	-GI,ØAD})
    subst({I G I},-GI, ØAD)
    ntinoj({I G I},IGI,IØ)
    nome({I G I}, -GI, Ø)
    Adj({I G I},  -GI, ØEM)

flag *Y:
    nome(A,,¬)
    nome(E,-E,A¬)
    nome(I,-I,A¬)
    nome(O,-O,A¬)

flag Z:
    nome(A,-A,ISM)
    nome(I,,SM)
    nome(O,-O,ISM)

{#} aff_name finigxas cxi tie.
divert(-1)
# La sekvaj Elisp-agordoj sencas nur por Emakso:
# Local variables:
# outline-regexp: "#§+\\|^define(\\|^flag\\>"
# eval:(modify-syntax-entry ?{ "('" m4-mode-syntax-table)
# eval:(modify-syntax-entry ?} ")`" m4-mode-syntax-table)
# eval:(modify-syntax-entry ?' "w" m4-mode-syntax-table)
# eval:(outline-minor-mode 1)
# eval:(hide-body)
# End:
