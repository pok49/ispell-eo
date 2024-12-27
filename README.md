-   **Name**:   `./README`
-   **Content**: Information about Esperanto dictionary for the Ispell speller
-   **Created**: 2024-01-19 by Sergio Pokrovskij `<sergio.pokrovskij(cxe)gmail.com>`
-   **Version**: 4.3

Copyright © 1997, 1998, 2003, 2006, 2008, 2024 by Sergio Pokrovskij

This dictionary package is available on the terms of GNU General Public
License version 2.0 (Free Software Foundation, 675 Mass Ave, Cambridge,
MA 02139, USA).


# Table of Contents

1.  [About the Package](#org41dc846)
2.  [Quick Install](#orga83e462)
    1.  [Ispell](#orgdd3dc73)
        1.  [The Binary File](#org49310eb)
        2.  [Building eo.hash](#org3973b9d)
    2.  [Vim's Speller](#orgb327f74)
3.  [For the Ispell Utility Program](#orgd2a607d)
    1.  [Esperanto encodings](#orgcc3df73)
4.  [Installation from Scratch](#orgaab5d1c)
    1.  [Simple Install (Unix or Cygwin)](#orgffead5d)
    2.  [Vim](#org4e9d7a8)
    3.  [Customized Build](#org58c2a2f)
5.  [Usage](#org13d66fa)
    1.  [Command line](#orge124eec)
        1.  [ASCII terminal](#org1aaed29)
        2.  [Unicode](#org625f9b2)
        3.  [Latin-3](#orgcb665ea)
    2.  [Emacs](#org3c07fff)
6.  [Apostrophes](#org6567e7f)
    1.  [Apostrophes in Wikipedia](#orgf442fb8)
    2.  [Switching the Ispell Dictionaries](#orged9f4b8)
    3.  [Inputting Apostrophes and Quotation Marks](#orgc8a23b8)
    4.  [Further Reading on the Apostrophe problem](#org572fa9f)


<a id="org41dc846"></a>

# About the Package

Here is an Esperanto spelling dictionary, compiled by Sergio Pokrovskij for the
versions 3+ of [Ispell](https://en.wikipedia.org/wiki/Ispell).

The dictionary can also be converted into an `eo.utf-8.spl` file for
use with the [Vim Speller](https://vimdoc.sourceforge.net/htmldoc/spell.html) (see `:help spell` in vim itself).

Some more information is available [in Esperanto](doc/ispelleo-legu-min.md).


<a id="orga83e462"></a>

# Quick Install


<a id="orgdd3dc73"></a>

## Ispell

You will need to have Ispell 3.0+; its precompiled package is
available in most of Linux repositories, the source tarball can be
downloaded from its [official site](https://www.cs.hmc.edu/~geoff/ispell.html#ftp-sites); if you compile it from the sources,
make sure that in its `local.h` the `NO8BIT` thing is commented out
and `MASKBITS = 64`. To see the option `ispell` has been compiled with,
please run

    $ ispell -vv | grep MASKBITS

The result should be:

    MASKBITS = 64

<a id="org4221d94"></a>


<a id="org49310eb"></a>

### The Binary File

Here is a binary dictionary [eo.hash](https://kovro.heliohost.org/eo/tools/ispelleo/eo.hash), made for Linux x86\_64. It should
be placed where Ispell expects to find it, in my case it is

    $ ispell -vv | grep LIBDIR

    LIBDIR = "/usr/lib/ispell"

You can test your installation by an ASCII transliteration on any
terminal:

    $ echo "Kuba harpisto sxajnis amuzigxi facilege cxe via jxauxda hxoro" |\
    ispell -T cxirkaux -d eo

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: ok
    ok (derives from root HARPI)
    ok (derives from root ^SAJNI)
    ok (derives from root AMUZI)
    ok (derives from root FACILEGA)
    ok
    ok (derives from root VI)
    ok
    ok
    
    word:

or by Unicode representation, if your terminal works in UTF-8:

    $ echo "Ŝajnas ke sagaca monaĥo laŭtvoĉe refuzadis pregi syr herbaĵo" |\
    ispell -P -T utf8 -d eo

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: ok (derives from root ^SAJNI)
    ok
    ok
    ok
    ok (derives from root LA^UTVO^CA)
    how about: refutadis, reuzadis, rifuzadis
    how about: predi, preĝi, premi, preni, presi, preti, puregi, regi
    how about: sur
    ok (derives from root HERBO)
    
    word:

Also see the section “[Usage](#org92fbad2)” below.


<a id="org3973b9d"></a>

### Building eo.hash

If the binary `eo.hash` proves incompatible with your system, you can
build it yourself from [eo.aff](https://kovro.heliohost.org/eo/tools/ispelleo/eo.aff) and [eo.asc](https://kovro.heliohost.org/eo/tools/ispelleo/eo.asc):

1.  Download the files.
2.  Use the `buildhash` utility from the `ispell` distro:

    buildhash eo.asc eo.aff eo.hash

You now can try the new `eo.hash` and proceed back to “[The Binary File](#org4221d94)”.


<a id="orgb327f74"></a>

## Vim's Speller

There is an obsolete [vimspell plugin](https://www.vim.org/scripts/script.php?script_id=465) for the ubiquitous [Vim editor](https://en.wikipedia.org/wiki/Vim_(text_editor)),
which provides an interface to `ispell` and `aspell`. You should be
able to use the ispell-eo dictionaries via this interface (I did not
test it). Yet it is no longer supported:

> **note to VIM 7 users !**
> 
> Version 7 of vim integrates a native spellchecker which outperforms
> vimspell script. As such I will not maintain anymore vimspell script,
> and you are advised to delete all related files from your plugin/ and
> doc/ directory, and use the native spellchecker instead.

I have written a converter from my Ispell source dictionary to the Vim's
Spell format (which is basically the [MySpell](https://en.wikipedia.org/wiki/MySpell) format).

The ready-made packed dictionary is available for download as
[eo.utf-8.spl](https://kovro.heliohost.org/eo/tools/vim-spell/eo.utf-8.spl). You can install it locally for yourself in
`$HOME/.vim/spell`, or in a system-wide manner in a `spell` or `after`
subdirectory of Vim's `runtimepath` variable. (To examine its value
say `:echo &runtimepath`).

In order to invoke Esperanto spell say `:setlocal spell spelllang=eo`.
For help about speller commands see

    :h spell

(or see the same documentation [on the Web](https://vim-jp.org/vimdoc-en/spell.html#spell)).


<a id="orgd2a607d"></a>

# For the Ispell Utility Program

<a id="org56e6dfc"></a>


<a id="orgcc3df73"></a>

## Esperanto encodings

Several encodings used with Esperanto text are supported:

1.  The very best is Unicode or its subset, which contains the
    esperantic letters, like the Microsoft's WGL4 or better ISO's MES-1
    or MES-2; you can use it with `xterm` or `Emacs` under Unix, or
    with `UniRed` under Windows.
    
    Unicode is available in UTF-8 encoding, which is preferred for the
    Unices.

2.  The second best choice used to be the Latin‑3 encoding (ISO-8859‑3);
    it is obsolete by now.

3.  For the sake of the ASCII-impaired (and ANSI-impaired), there are two
    surrogates:
    -   The TeX-like `^cirka^u-style: e^ho^san^go ^ciu^ja^ude`. Presently
        this is used as the reference representation, mainly because it is
        unambiguous (cf names like *Michaux*); and
    
    -   The popular `cxirkaux-style`, which is also convenient for
        lexicographical ordering and thus is used in the dictionaries;
        besides, it uses ASCII letters only, and that makes it suitable for
        various names in computer programs.


<a id="orgaab5d1c"></a>

# Installation from Scratch


<a id="orgffead5d"></a>

## Simple Install (Unix or Cygwin)

1.  Clone the `ispel-eo` project into your local repository:
    
        $ git clone https://github.com/pok49/ispell-eo
2.  Go to the root directory `ispell-eo` (where this `readme` resides).
3.  Say
    
        $ make first
    
    (or simply `make`) in order to check your `ispell` program.
    Examine the output, e.g. do you have the permissions to write the
    hash file(s) at the install phase?
4.  If everything is OK, say
    
        $ make eo
    
    (to built the strict dictionary), or
    
        $ make esperanto
    
    (to built a permissive dictionary), or
    
        $ make all
    
    (to built both).
    You may get a few warnings of from `buildhash`, like this one:
    
        eo.aff line 218: Flag must be alphabetic
    
    Just ignore them.
5.  Type
    
        $ make install
    
    to copy the hash file(s) to where Ispell expects them to be
    (probably you already have your `american.hash` there; normally you
    shall need the root rights to make install).

After that you can call, for instance,

    $ ispell -d eo -T cxirkaux $HOME/Git/ispell-eo/doc/ekz.cx

(`ekz.cx` is an ASCII file, in which the Esperantic letters are
presented in `cxirkaux`-surrogate, as the `-T cxirkaux` argument
states; this ASCII interface should work on any terminal).


<a id="org4e9d7a8"></a>

## Vim

If the prefabricated `eo.utf-8.spl` dictionary does not work for you,
you could try to pack it on your computer from the files `eo_l3.aff`
and `eo_l3.dic` in the `ispell-eo/oo/vimspell` subdirectory:

    $ cd $HOME/Git/ispell-eo/vimspell
    $ env LANG=eo.utf-8 vim -u NONE -e -c "mkspell! $HOME/.vim/spell/eo eo" -c q 2>&1 > err

This implies that you have installed the Esperantic `eo.utf-8` locale
in your system (available in most Linux distros); it should produce
`eoutf-8.spl` in the `$HOME/.vim/spell/` directory for your private
use.

If you prefer a different composition, you can make the dictionary
yourself. You'll need Emacs to produce the dictionary for `MySpell`
(which used to work with `OpenOffice` and which remains the basis of
the Vim's Spell). `cd` into `$HOME/Git/ispell-eo`; customize the word
provision as described in “[Customized Build](#org18f34de)” (except the `buildhash`
and the following steps). In the `Makfile` check its
`vim_spl_install_dir` variable; by default it is set for a local
install in your `$(HOME)/.vim/spell` directory; you may prefer to set
it globally for a system-wide install. Then say

    $ make vim

and

    $ make install_vim

(the latter may require the administrative rights for a system-wide install).

To see Vim Speller in action please open the test file

    $ vim $HOME/Git/ispell-eo/doc/vim-test.u8

and say

    :set spell spelllang=eo

<a id="org18f34de"></a>


<a id="org58c2a2f"></a>

## Customized Build

In order to enable selective construction of dictionaries, some entries
in the source dictionary `./src/vortoj.l3` are marked with keywords
indicating the special field they belong to:

`#arhx` : archaic words, like ‹ĥina› (= ‹ĉina›) or ‹malkompreni› (= ‹miskompreni›)  
`#bot`  : a rare botanic word  
`#Eujo` : vocabulary of the Esperanto Movement (of ‹Esperantujo›)  
`#etn`  : ethnography; actually also countries and other geography  
`#his`  : history  
`#komp` : some computer-science terminology according to the [Komputada Leksikono](http://www.esperanto.mv.ru/KompLeks/UTF8/DEFAULT.html)  
`#mav`  : redundant words, which are used by some esperantists, though they are less precise and unnecessarily complicate the language; e.g. ‹olda› (‹maljuna› **or** ‹malnova›), ‹mava› (= ‹malbona›)  
`#mit`  : mythology, religion  
`#pers` : given names and names of important personalities (e.g. ‹Petro›, ‹Ŝekspiro› &#x2026;)  
`#pok`  : the words specific to my idiolect  
`#rar`  : rare words which may coincide with a misspelling of a more frequent word; e.g. ‹ajuna›, ‹komanditi›, ‹liona›  
`#var`  : variant which I do not use but which is frequent enough (e.g. ‹kemio›, ‹tekniko› opposed to ‹ĥemio› and ‹teĥniko›)  
`#zoo`  : uncommon zoological word

You can `grep`,

    $ grep '#mav' ./src/vortoj.l3 | less

in order to see if you feel like me about them; you can either remove
all of them from the target dictionary, or remove the `#mav` mark from
those you do use and like; the default setting in the `./Makefile` is

    short_list      =  komp,etn,Eujo,mll
    pok_list	=  $(short_list),bot,fremd,his,pok,pers,var,zoo
    eo_list         =  $(short_list),drv
    esperanto_list  =  $(short_list),arhx,mav,rar

Unless included in the custom list (like `eo_list`), a marked word is
considered as a special one and is excluded from the build.

When preparing a dictionary for the Vim Speller it is advisable to
retain the entries marked with `#mav` and `#rar`: in Vim Spell
dictionary they will receive the qualifications `BAD` and `RAR` and as
such will be warned about in an appropriate manner.

<a id="org92fbad2"></a>


<a id="org13d66fa"></a>

# Usage

One same Ispell dictionary, e.g. `eo.hash`, can be used with several
input representations, specified in its affix file (e.g. `eo.aff`).
Each such representation can be identified by a name (used in ispell
invocation as ‘‑T identifier’ argument), or by the extension of the
argument filename; both identification kinds are specified in the
affix file. In case of identification conflict the name argument takes
precedence.

`eo.aff` defines the following representations:

1.  `tex` (the extensions are `.tex` or `.bib`)is suited for TeX, and
    imitates the *dead keys:* `e^ho^san^g^' ^ciu^ja^de`. It is the
    representation for which `ispell-eo` was originally designed (in
    connection with the “[Komputika Leksikono](https://eo.wikipedia.org/wiki/Komputada_Leksikono)”), and it remains the
    basic representation used in `ispell-eo` internally.
2.  `cxirkaux` (or `.cx` or `.t`) identifies the x‑style representation,
    which is the most popular ASCIIization of the Esperanto letters;
    `ehxosxangx' cxiujxauxde`.
3.  `latin3` (or `.l3`) is the straightforward application of
    ISO 8859‑3 (aka Latin‑3), which gives all the accented esperantic
    letters their canonical form; the apostrophe is represented as the
    ASCII `'` (0x27).
4.  `epo` (or `.la3` or `.wiki`) is like `latin3`, except that the
    apostrophe is represented by ‹´› (0xB4, spacing acute; see below
    the section “[Apostrophes](#org6d8564e)”); `epo` is the standard 3-letter
    designation of Esperanto in ISO 639.
5.  In `utf8` (`.html`, `.u8`, `.utf`) the accented letters are coded by
    2 bytes each according to the UTF-8 encoding; apostrophe is encoded
    as ‹ʼ› (U+02BC, `#xCA #xBC`, modifier letter apostrophe).

Unlike Aspell or Hunspell, Ispell allows switching among these
representations (via the `-T` flag: `‑T tex`, or `‑T utf8` etc) while
using the same hash file; this is an advantage of Ispell. OTOH
variation in the word provision (e.g. inclusion or exclusion of the
“bad” words) requires compilation of separate hash files (in our case,
`eo.hash` vs `esperanto.hash`); here Hunspell and Vim Speller are more
flexible, they make it possible to retain the bad words and mark their
use in a special way.

Some usage examples below are illustrated with specimen files from the
`ispell-eo/doc` directory (which in my case is in my local
`$HOME/Git/` repository). This should give you an idea about where and
what kind of files could be used in a given situation.


<a id="orge124eec"></a>

## Command line

You can use Ispell in a stand-alone mode, as a console program. The
usage depends on the encodings available at your terminal emulator for
representing the Esperanto letters.


<a id="org1aaed29"></a>

### ASCII terminal

This is available anywhere, you can use the `tex` (TeX) or the
`cxirkaux` representation. In the `tex` representation the word
*ĉirkaŭ* takes the form `^cirka^u`; in the latter case both esperantic
accents are expressed with the letter `x`, do `cxirkaux`. In order to
check a file with the Ispell dialog editor simply type (for the
x‑notation):

    ispell -d eo -T cxirkaux $HOME/Git/ispell-eo/doc/ekz.cx

or (fro the TeX notation):

    $ ispell -d eo -T tex $HOME/Git/ispell-eo/doc/ekz.^c

The resulting dialog is self-explanatory.

You also can request a list of misspelt words, e.g.

    $ cat -b $HOME/Git/ispell-eo/doc/ekz.cx
    $ ispell -d eo -T cxirkaux -l < $HOME/Git/ispell-eo/doc/ekz.cx

         1	Por ke la linguo intrenacia povu bone kaj regule progresadi kaj por ke
         2	gxi havu plenan cetrecon, ke gxi neniam disfalos kaj ia facxilanima
         3	pasxo de gxiaj amikoj estontaj ne detruos la laborojn de gxiaj amikoj
         4	estitaj, -- estas plej necesa antaux cxio unu kondico: la ekzistado de
         5	klare difinita, neniam tusxebla kaj neniam sxangxebla Fundamento ...
    
         6	en nova form' eksonis nova kant'
    linguo
    intrenacia
    cetrecon
    facxilanima
    estitaj
    kondico

Unfortunately, the Ispell editor is unaware of multibyte characters.


<a id="org625f9b2"></a>

### Unicode

Ispell is two decades older than Unicode; yet it is possible to use
its general specification facilities to define the UTF-8 encoding of
the Esperantic letters, and it partially works.

The modern Linux terminals use the UTF-8 encoding by default, so you
can say there:

    $ ispell -d eo -T utf8 $HOME/Git/ispell-eo/doc/testo.u8

or submit test words in the command  line:

    $ echo "faĉilanima paŝo de ĝiaj anikoj estitaj" | ispell -T utf8 -d eo

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: how about: facilanima
    ok (derives from root PA^SI)
    ok
    ok (derives from root ^GI)
    how about: amikoj, anigoj, aniĝoj, animoj, aninoj, anizoj, manikoj, panikoj, unikoj
    how about: estigaj, estiĝaj, estimaj, estintaj, estritaj, festitaj, ostitaj, testitaj, vestitaj, esti+taj, estu-u+itaj
    
    word:

(The suggestions are presented in the TeX notation.)

You can also get a list of all misspelled or unknown words from a text:

    $ head -9 $HOME/Git/ispell-eo/doc/Cart.u8

    AL Sinjoro fruictier.
    Kara Amiko!
    Vi petis, ke mi prezentu vian libron al Esperantistaro.
    Prezentadon ĝi ne bezonas: ne sole ĉar la ĉefredaktoro
    de »Lingvo Internacia« jam elmontris sian valoron, sed
    precipe ĉar lia verko estas kunmetita laŭ principoj
    de severega metodo. Eĵektive, kio eslas farita per Scienco
    kaj en ĝia nomo, tio tute ne bezonas patronadon, ĉar
    ne ekzistas pli atta.

    $ head -9 $HOME/Git/ispell-eo/doc/Cart.u8 | ispell -d eo -T utf8 -l

    fruictier
    Eĵektive
    eslas
    atta

(The file `Cart.u8` is produced by OCR of a letter by Th. Cart to Paul
Fruictier, published as a foreword to “Esperanta Sintakso” by the
latter. The letter is printed in italics.)

Such a short file is more conveniently corrected in a text editor
via its speller interface (see “[Emacs](#org0b61009)” below); but when editing a
large file, e.g. a scan of a book such as *Historio de Mondolingvo* by
E. Drezen, it may be advantageous to get a list of most numerous
errors; in Unix this can be done with a one-liner:

    $ ispell -H -l -d eo -T utf8 < Drezen.html | sort -if | uniq -c | sort -nr | head -12

        215 ciuj
        209 tin
        185 gi
        168 lau
        167 ankau
        156 ce
        143 au
        127 ec
        120 in
        120 autoro
        112 Paris
        109 Volapiik

(the 1st column indicates the number of occurrences of the error).
With such a list one can correct hundreds or dozens of errors with a
single command.


<a id="orgcb665ea"></a>

### Latin-3

You may safely skip this section, unless you are interestwed in
history of computing or have to use software which accepts only single-byte
encodings.

The ISO 8859‑3 encoding, aka Latin‑3, is now rarely used; yet it is for
such a single-byte encoding that Ispell was developed. Presently a
Latin‑3 terminal is not readily available; one could install `xterm` and
its `luit` package; and then either launch `xterm` in Latin‑3:

    $ xterm -en 'ISO 8859-3' &

or use `luit` as a filter:

    $ luit -encoding 'ISO 8859-3' echo eĥoŝanĝo | od -c

    0000000   e 266   o 376   a   n 370   o  \n
    0000011

(the `echo|od` commands attest that the non-ASCII letters are encoded
in Latin‑3).

In this environment the dialog Ispell Editor shall work as expected:

    ispell -d eo -T latin3 $HOME/Git/ispell-eo/doc/testo.l3

(the file `testo.l3` is written in the Latin‑3 encoding).

<a id="org0b61009"></a>


<a id="org3c07fff"></a>

## Emacs

Normally I use Ispell in an Emacs session. Emacs is distributed with
the `ispell.el` package, which provides an interface with the ispell
processes (see “[InteractiveSpell](https://www.emacswiki.org/emacs/InteractiveSpell)” in Emacs' Wiki). This package
includes, among others, specifications for interactions with the
permissive `esperanto` dictionary in two representations: `latin3` and
`tex`; in ispell.el they are named resp. `esperanto` and
`esperanto-tex`.

Don't be affraid of the name `latin3`: your text may be (and normally
is) in Unicode; the program seamlessly converts your UTF-8 words to
Latin‑3 and back, using Latin‑3 behind the scenes, so that you never notice
it. The only exception is the limitation of the repertoire of the
characters available for word representation: e.g. you cannot use the curly
apostrophe, which is absent from Latin‑3, and thus cannot be passed to
ispell.

As mentioned earlier, the Esperantic Ispell dictionaries can accept the
UTF-8 input; alas, for some bugs in `ispell.el` conversions from the
integer Unicode numbers to multibyte UTF-8 and back “may result in the
evil misalignment error”; the interaction with 1-byte codes (e.g.
Latin‑3) is more stable.

In my practical work I prefer the stricter `eo.hash` dictionary (and
the x‑style ASCIIization); both are made available via the
`./emacs/ispell-ini.el` customization included in this distribution.
You may copy it into your `site-lisp` (or somewhere else on your emacs'
`load-path`), and put this into your `.emacs`:

    (load "ispell-ini.el")

`ispell-ini.el` provides access to the hash dictionaries via the
names of the Esperanto representations it defines:

eo   : latin3(eo.hash)
epo  : epo(eo.hash)
eo-x : cxirkaux(eo.hash)
esperanto-x : cxirkaux(esperanto.hash)

The representation names `latin3, , cxirkax` are described above in
“[Esperanto encodings](#org56e6dfc)”. `epo` is basically `latin3` extended with a
special care of the curly apostrophes; it enables use (and check) of
Unicode coded texts, even though the stable ispell representation is
functioning in the single-byte Latin‑3 encoding. This solution is
presented in the next section.

<a id="org6d8564e"></a>


<a id="org6567e7f"></a>

# Apostrophes

In English, the apostrophes appear either inside a word, like in
*isn't* (and this case is addressed by the `boundarychars`
specification), or after a well-formed word, like in *for goodness'
sake* (where the exclusion of the apostrophe does not raise a false
error report). Confusions with quotes are infrequent, yet possible:

    $ echo 'Tis the season to be jolly! | ispell | head -2

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: how about: Dis, His, Is, Its, Otis, Pis, Sis, T's, TAs, This, Ti, Ti's, Tia, Tic, Tics, Tie, Ties, Tim, Tims, Tin, Tins, Tip, Tips, Tit, Tits, Ti s, Ti-s, Ts, TVs, T is, T-is, Vis

In Esperanto apostrophes appear mainly as the last of the wordʼs
characters, i.e. in a most error-prone position:

    en nova form' eksonis nova kant'

Ispell and Aspell are able to treat such postfix apostrophes; Hunspell
and Vim Speller take account of non-letter characters (e.g. `-` or
`'`) only inside a word, when they occur between two letters.

Actually the fine typography requires a curly apostrophe, and Unicode
offers two options:

-   the *modifier letter apostrophe* ‹ʼ› U+02BC, and
-   the *right single quotation mark* ‹’› U+2019.

The letter apostrophe is classified by Unicode as a letter, and as
such perfectly suits the Esperantic spelling dictionaries for Hunspell
and Vim Speller; hence the Hunspell spelling dictionary for Esperanto,
distributed with LibreOffice, as well as my conversion for Vim Speller
both cannot but opt for U+02BC.

Unfortunately the impact of the English (or rather Microsoft's)
tradition imposes the use of U+2019 (e.g. great many fonts which
follow the Microsoftʼs WGL4 standard have U+2019 and lack U+02BC).
Also the Unicode® Standard 15.1.0 (2023 Sept. 12), [Chapter 6](https://www.unicode.org/versions/Unicode15.0.0/ch06.pdf), supports
this confusion:

> An implementation cannot assume that users’ text always adheres to the
> distinction between these characters. The text may come from different
> sources, including mapping from other character sets that do not make
> this distinction between the letter apostrophe and the punctuation
> apostrophe/right single quotation mark. In that case, *all* of them
> will generally be represented by U+2019.
> 
> The semantics of U+2019 are therefore context dependent. For example,
> if surrounded by letters or digits on both sides, it behaves as an
> in-text punctuation character and does not separate words or lines.

This [Wrong Thing](http://catb.org/jargon/html/W/Wrong-Thing.html) works for English and French; it fails for Esperanto
and other languages where apostrophes may behave as a word element at
the word boundary; i.e. the ISO standard is not international enough.

In an Ispell specification any character may be declared a letter;
thus the `eo, esperanto, eo-x, esperanto-x` representations use the
ASCII apostrophe ‹'›; the `utf8` (unavailable via the `ispell.el`
interface) uses U+2019 (this can be changed to U+02BC by replacing one
line in the affix file). Unfortunately the interaction between the
`utf8` representation in Ispell and `ispell.el` remains unstable for
“the evil misalignment error”.

As a workaround, alongside the traditional `latin3` representation,
which uses the ASCII apostrophe, there is the `epo` representation in
Ispell, in which the ASCII apostrophe is ignored (and available for
any non-lexical usage); the Esperantic *letter apostrophe* is
represented by the otherwise unused Latin‑3 character ‹´› (*spacing
acute,* 0xB4). Now, the attached `ispell-ini.el` file *advises* the
interface functions `ispell-send-string` and `ispell-parse-output` in
such a way, that in the input string sent to the Ispell process the
curly apostrophes (either U+2019 or U+02BC) are replaced with 0xB4;
and in the Ispellʼs output this character (if any) is recoded back to
the “canonical” apostrophe representation, specified by the
`ispell-apostrophe` Elisp variable. Its default value is U+2019 (right
quote), but it can be toggled to U+02BC and back by the interactive
Elisp function

    M-x ispell-set-apostrophe

When given a numeric prefix, this function can also set the variable
unconditionally: with 1 it is set to the letter apostrophe ‹ʼ›; with
2, to the right quotation mark ‹’›.


<a id="orgf442fb8"></a>

## Apostrophes in Wikipedia

In informal writing one usually would prefer the easier ASCII
apostrophes, and apply the `eo` spellcheck; `epo` is appropriate when
one in preparing a typographic quality text, or when the ASCII
apostrophe is used for some extra-lingual purpose, like in Wikipedia
sources.

Take for example the source text of article «[Majusklo](https://eo.wikipedia.org/wiki/Majusklo)» in the
Esperanto Wikipedia (triple apostrophes are the boldface mark):

    '''Majusklo''' (aŭ '''grandlitero''' aŭ '''ĉeflitero''')
    estas unu el du formoj, kiujn povas havi ĉiu litero ...

The `eo` spellcheck would complain about the inexistent words
<code>'''Majusklo'''</code>, <code>'''grandlitero'''</code>, <code>'''ĉeflitero'''</code>
Please note that such a nuisance does not occur in English or French,
where the apostrophes are recognized only within a word, between two letters.
On the one hand this is a language-dependent feature, which is not
equally convenient internationally (but was Wikipedia conceived as an
international project?). On the other hand, it may be useful to
promote the typographically preferable form of the apostrophes.


<a id="orged9f4b8"></a>

## Switching the Ispell Dictionaries

`ispell.el` provides the `spell-change-dictionary` function, bound to
`C-c i c`, ekz‑e

`C-c i c RET epo RET` selects the `epo` “dictionary” with ‹’›;  
`C-c i c RET eo RET` selects the `eo` “dictionary” with ‹'›.

It can also be invoked from the menu:

    Tools → Spell Checking → Change Dictionary ...

`ispell-ini.el` adds a few commands for easier switching:

`C-c i 3` sets the Esperanto `eo` (`latin3`) dictionary  
`C-u C-c i 3` sets the Esperanto `epo` dictionary  
`C-c i x` sets the Esperanto `eo-x` dictionary  
`C-u C-c i x` sets the `esperanto-x` dictionary

`C-c i a` sets the American English dictionary  
`C-c i f` sets the French dictionary  
`C-c i p` sets the Russian dictionary.


<a id="orgc8a23b8"></a>

## Inputting Apostrophes and Quotation Marks

In order to input curly apostrophes `ispell.el` provides the command

    C-c i '

It inserts U+2019 or U+02BC, according to the current value of
`ispell-apostrophe`.

The quotation marks can be inputted pairwise, and the cursor is
positioned in between; if there is an active region, the quotation
marks are put around it. The commands (shortcuts) are:

`C-c "` makes a pair of guillemets «│»  
`C-c 9` makes a 99—66 pair: „│“  
`C-c <` makes a pair of single guillemets: ‹│›  
`C-c 6` makes a 66—99 pair: “│”.


<a id="org572fa9f"></a>

## Further Reading on the Apostrophe problem

-   [Pri apostrofoj kaj citiloj en Esperanto](doc/apostrofoj.md) (in Esperanto)
-   [Which Unicode character should represent the English apostrophe? (And why the Unicode committee is very wrong)](https://tedclancy.wordpress.com/2015/06/03/which-unicode-character-should-represent-the-english-apostrophe-and-why-the-unicode-committee-is-very-wrong)
-   [Getting Emacs to play nice with Hunspell and apostrophes](https://groups.google.com/g/gnu.emacs.help/c/FPjX1kCHIB4) (a thread
    in the `<help-gnu-emacs@gnu.org>` forum)

