# ispell-eo
An Esperanto dictionary, compiled by Sergio Pokrovskij for the version 3 of ispell.

## About this File ##
Name:         `./readme`
Content:      Information about Esperanto dictionary for the Ispell speller
Created:      1997-08-30 by Sergio Pokrovskij <sergio.pokrovskij(at)gmail.com>
Version 3.7

Copyright 1997, 1998, 2003, 2006, 2008 by Sergio Pokrovskij

This dictionary package is available on the terms of GNU General Public License
(Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA).


## About the Package ##

Here is the Esperanto dictionary, compiled by Sergio Pokrovskij for
the version 3 of ispell.

### The Ispell utility program ###

You will first need to get ispell 3.0+; it is available from
ftp://ftp.cs.ucla.edu/pub/ispell-3.1; make sure that in its `local.h`
`NO8BIT` is commented out and `MASKBITS` = 64.  To see the options ispell
has been compiled with please run

    $ ispell -vv

### Esperanto encodings ###
Several encodings used with Esperanto text are supported:

 1. The very best is Unicode or its subset, which contains the
    esperantic letters, like the Microsoft's WGL4; you can use it with
    xterm or Emacs under Unix, or with UniRed under Windows (the latter
    has not been checked yet for the current version).
 
    Unicode is available in UTF-8 encoding which is becoming standard
    for Unices.
    
 2. The second best choice is the Latin-3 encoding (ISO-8859-3).
 
 3. For the sake of the ASCII-impaired (and ANSI-impaired), there are
    two surrogates:
 
    * The TeX-like `^cirka^u`-style: `e^ho^san^go ^ciu^ja^ude`.
      Presently this is made the reference representation, mainly
      because it is unambiguous (cf names like "Michaux") and 
    * The most popular `cxirkaux`-style, which is also convenient for
      lexicographical ordering and thus is used in the dictionaries;
      besides, it uses letters only, and that makes it suitable for
      variable names in computer programs.

     
## INSTALLATION

### Simple Install (Unix or Cygwin)

1. Unpack `ispell-eo` (you've done that since you are reading me).
2. Go to the root directory `ispell-eo` (where this `README` resides).
3. Say
   $ make first
   (or simply "make") in order to check your ispell program.
   Examine the output, e.g. do you have the permissions to write the
   hash file(s) at the install phase?

4. If everything is OK, say
       $ make eo
         (to built the strict dictionary), or
       $ make esperanto
        (to built a permissive dictionary), or
       $ make all
        (to built both).

   You'll get a few warnings of from buildhash, like this one:
      `eo.aff line 218: Flag must be alphabetic`
   Just ignore them.
5. Type
   $ make install
   to copy the hash file(s) to where ispell expects them to be
   (probably you already have your american.hash there; normally
   you shall need the root rights to make install).

   After that you can call
   $ ispell -d eo FILENAME


### Open Office ###

You'll need emacs to produce the dictionary for myspell which works
with Open Office.  Customize the word provision as described in
"Customized Build" (except the buildhash step); and then say
$ make OO
That should produce the files eo_l3.aff and eo_l3.dic in the work/
subdirectory.


### Customized Build ###

In order to enable selective construction of dictionaries, some
entries in the source dictionary `./src/vortoj.l3` are marked with
keywords indicating the special field they belong to:

\#arhx
  : archaic words, like *ĥina* (= *ĉina*) or *malkompreni* (= *miskompreni*)
\#bot
  : a rare botanic word
\#Eujo
  : vocabulary of the Esperanto Movement (Esperantujo)
\#etn
  : countries and ethnography
\#komp
  : some computer-science terminology according to the «[Komputada Leksikono](http://www.esperanto.mv.ru/KompLeks/UTF8/DEFAULT.html)»
\#mav
  : redundant words, which are used by some esperantists, though they are less precise and unnecessarily complicate the language; e.g. olda (maljuna or malnova), "mava" (malbona)
\#pers
  : given names and names of important personalities (Petro, Zamenhof, Noa ...)
\#pok
  : the words specific to my idiolect
\#rar
  : rare words which may coincide with a misspelling of a more frequent word; e.g. "ajuna", "komanditi", "liona".
\#var
  : variant which I do not use but which is frequent enough (e.g. kemio, tekniko opposed to ^hemio and te^hniko).
...

You can
```bash
$ grep '\#mav' ./src/vortoj.l3 | less
```
in order to see if you feel like me about them; you can either remove
all of them from the target dictionary, or remove the \#mav mark from
those you do use and like; the setting in the ./Makefile, 

```make
short_list	    =	komp,etn,Eujo,pers,mll
eo_list         =	$(short_list),drv
esperanto_list	=	$(short_list),arhx,mav,rar
```

Unless included in the custom list (like eo_list), a marked word is
considered as a special one and is excluded from the build; the above
custom lists thus specify "positive criteria".  But some words have
several marks (e.g. a word may be "ethnic" and "obsolete" or
dangerously close to a  misspelling of a frequent word).  Thus a
"negative" filtration is available via the $(sen) macro; you can
specify it in src/Makefile, or in the command-line:
```bash
    $ make eo sen="arhx,rar"
```
In this way some otherwise eligible words from the `komp` or `etn` or
`mll` categories shall be discarded, if they are also obsolete or rare.

## Usage ##

### Command line ###

You can use ispell in a stand-alone mode; type

    ispell -d eo FILENAME

or you may prefer to customize your emacs; e.g. copy
./emacs/ispell-ini.el from this distribution into your site-lisp (or
somewhere else on your emacs load-path), and put this into your .emacs
```elisp
(load "ispell-ini.el")
```
In order to get a list of all misspelled or unknown words from a text
in the Latin-3 encoding you could say (in Linux):
```bash
export LC_ALL=eo_XX.ISO-8859-3
ispell -d esperanto -T .l3 -l < FILENAME | sort -u
```
Some more comments are available [in esperanto](ispelleo-legu-min.html).

## emacs.el

This probably is no longer required for emacs-21.

I enclose the emacs/ispell.el file, which is a modified version of
ispell.el which comes with the Emacs-20 distribution.  There are two
modifications:

1. the variable `ispell-dictionary-alist-3` is modified to use the
   latin-3 encoding (it is latin-1 in the distribution);

2. the coordinates of the correction for the word being checked is
   done in a more thorough fashion.  The original version fails to
   account for the fact that ispell returns multibyte representation,
   while the internal Emacs representation for the UTF-8 takes one
   unit per character.  As a result, the "misalignment error" occurs,
   when the word is close to the end of line, and the correction end
   extends beyond the end of line.  With my patch the esperantic texts
   in UTF-8 are spellchecked normally, unless a foreign character
   occurs in the buffer; but that is a different bug, which is present
   for the unibyte encodings as well.

## New in v.3.1

1. More affix flags are defined; this requires an ispell built with
   `MASKBITS` = 64 (or more).

2. Presently the main ASCIIzation is in the TeX style.  (The
   cxirkaux-transcription is available as an alternative
   representation.)

3. Some non-esperantic letters are made available, like \c{c}, \"o,
   {\o} etc for the names like W\"uster or St{\o}p-Bowitz.  This is
   done for a few most frequent letters only; more work is needed.

4. Two flavors of Esperanto dictionaries/grammars are introduced: the
   permissive "esperanto" and the rigorous "eo".

5. The installation process is automated on the basis of (gnu)make and
   some other Unix utilities.

6. All the specialized subdictionaries are merged into a single
   database (with subject area marks).

7. An Emacs function word+ is written for the dictionary database
   maintenance.


* TODO

1. More Latin letters.

2. Better and/or more portable tools for dictionary maintenance.
   (Maybe a Perl script?)
