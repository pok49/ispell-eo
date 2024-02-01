
# Table of Contents

1.  [About the Package](#org3b7f315)
2.  [Quick Install](#orgc34366f)
    1.  [Ispell](#org1d70ebb)
        1.  [The Binary File](#org5d3422e)
        2.  [Building eo.hash](#org5aff628)
    2.  [Vim Spell](#orgf550c5e)
    3.  [Esperanto encodings](#esperanto-encodings)
3.  [Installation](#installation)
    1.  [Simple Install (Unix or Cygwin)](#simple-install-unix-or-cygwin)
    2.  [Open Office, Vim](#open-office)
    3.  [Customized Build](#customized-build)
4.  [Building vim spell](#org9a9a298)
5.  [Usage](#org46682bf)
    1.  [Command line](#command-line)
        1.  [ASCII terminal](#org2510ace)
        2.  [Unicode](#unicode)
        3.  [Latin-3](#orgba8336b)
    2.  [Emacs](#orga2734c2)
6.  [Apostrophes](#orgd488c38)

-   **Name**:   `./README`
-   **Content**: Information about Esperanto dictionary for the Ispell speller
-   **Created**: 2024-01-19 by Sergio Pokrovskij `<sergio.pokrovskij(cxe)gmail.com>`
-   **Version**: 4.0

Copyright © 1997, 1998, 2003, 2006, 2008, 2024 by Sergio Pokrovskij

This dictionary package is available on the terms of GNU General Public
License version 2.0 (Free Software Foundation, 675 Mass Ave, Cambridge,
MA 02139, USA).


<a id="org3b7f315"></a>

# About the Package

Here is an Esperanto dictionary, compiled by Sergio Pokrovskij for the
versions 3+ of ispell.

The dictionary can also be converted into an `eo.utf-8.spl` file for
use with the `vim` speller.


<a id="orgc34366f"></a>

# Quick Install


<a id="org1d70ebb"></a>

## Ispell

You will first need to get ispell 3.0+; it is available in most of
Linux repositories or at its [author's site](https://www.cs.hmc.edu/~geoff/ispell); make sure that in its
`local.h` the `NO8BIT` thing is commented out and `MASKBITS = 64`. To
see the option ispell has been compiled with, please run

    ispell -vv | grep MASKBITS

    MASKBITS = 64


<a id="org5d3422e"></a>

### The Binary File

Here is a binary dictionary [eo.hash](https://kovro.heliohost.org/eo/tools/ispelleo/eo.hash), made for Linux x86<sub>64</sub>. It should
be placed where ispell expects to find it, in my case it is

    ispell -vv | grep LIBDIR

    LIBDIR = "/usr/lib/ispell"

You can test your installation by an ASCII transliteration on any
terminal:

    echo "Kuba harpisto sxajnis amuzigxi facilege cxe via jxauxda hxoro" |\
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

    echo "Ŝajnas ke sagaca monaĥo laŭtvoĉe refuzadis pregi syr herbaĵo" |\
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

Also see the [5](#org46682bf) section below.


<a id="org5aff628"></a>

### Building eo.hash

If the binary `eo.hash` proves incompatible with your system, you can
build it yourself from [eo.aff](https://kovro.heliohost.org/eo/tools/ispelleo/eo.aff) and [eo.asc](https://kovro.heliohost.org/eo/tools/ispelleo/eo.asc):

1.  Download the files.
2.  Use the `buildhash` utility from the `ispell` distro:

    buildhash eo.asc eo.aff eo.hash

You now can try the new `eo.hash` and proceed back to [2.1.1](#org5d3422e).


<a id="orgf550c5e"></a>

## Vim Spell

Presently the Vim editor comes with its own speller and English
dictionaries. I have written a converter from my ispell source
dictionary to the Vim Spell format (which is basically the `myspell`
format).

The ready-made packed dictionary is available for download as
[eo.utf-8.spl](https://kovro.heliohost.org/eo/tools/vim-spell/eo.utf-8.spl). You can install it locally for yourself in
`$HOME/.vim/spell`, or in a system-wide manner in a `spell` or `after`
subdirectory of Vim's `runtimepath` variable. (To examine its value
say `:echo &runtimepath`).

To invoke Esperanto spell say `:setlocal spell spelllang=eo`; for the
help about speller commands see `:h spell`.

:CUSTOM<sub>ID</sub>: the-ispell-utility-program


<a id="esperanto-encodings"></a>

## Esperanto encodings

Several encodings used with Esperanto text are supported:

1.  The very best is Unicode or its subset, which contains the esperantic
    letters, like the Microsoft's WGL4; you can use it with xterm or
    Emacs under Unix, or with UniRed under Windows.
    
    Unicode is available in UTF-8 encoding, which is preferred for the
    Unices.

2.  The second best choice used to be the Latin-3 encoding (ISO-8859-3);
    it is obsolete by now.

3.  For the sake of the ASCII-impaired (and ANSI-impaired), there are two
    surrogates:
    -   The TeX-like `^cirka^u-style: e^ho^san^go ^ciu^ja^ude`. Presently
        this is used as the reference representation, mainly because it is
        unambiguous (cf names like *Michaux*); and
    
    -   The popular `cxirkaux-style`, which is also convenient for
        lexicographical ordering and thus is used in the dictionaries;
        besides, it uses letters only, and that makes it suitable for
        variable names in computer programs.


<a id="installation"></a>

# Installation


<a id="simple-install-unix-or-cygwin"></a>

## Simple Install (Unix or Cygwin)

1.  Clone the `ispel-eo` project into your local repository:

    git clone https://github.com/pok49/ispell-eo

1.  Go to the root directory `ispell-eo` (where this `readme` resides).
2.  Say

    make first

(or simply `make`) in order to check your ispell program.

Examine the output, e.g. do you have the permissions to write the hash
file(s) at the install phase?

1.  If everything is OK, say

    make eo

(to built the strict dictionary), or

    make esperanto

(to built a permissive dictionary), or

    make all

(to built both).

You may get a few warnings of from buildhash, like this one:

`eo.aff line 218: Flag must be alphabetic`

Just ignore them.

1.  Type

    make install

to copy the hash file(s) to where ispell expects them to be (probably
you already have your american.hash there; normally you shall need the
root rights to make install).

After that you can call

     =$ ispell -d eo = /filename/


<a id="open-office"></a>

## Open Office, Vim

You'll need emacs to produce the dictionary for myspell which works with
Open Office. Customize the word provision as described in “Customized
Build” (except the buildhash step); and then say

     =$ make OO=

That should produce the files `eo_l3.aff` and `eo_l3.dic` in the `work/`
subdirectory.

env LANG=eo.utf-8 vim -u NONE -e -c "mkspell! $HOME/.vim/spell/eo eo" -c q 2>&1 > err


<a id="customized-build"></a>

## Customized Build

In order to enable selective construction of dictionaries, some entries
in the source dictionary `./src/vortoj.l3` are marked with keywords
indicating the special field they belong to:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">`#arhx`</td>
<td class="org-left">archaic words, like *hxina* (= *cxina*) or *malkompreni* (= *miskompreni*)</td>
</tr>


<tr>
<td class="org-left">`#bot`</td>
<td class="org-left">a rare botanic word</td>
</tr>


<tr>
<td class="org-left">`#Eujo`</td>
<td class="org-left">vocabulary of the Esperanto Movement (of *Esperantujo*)</td>
</tr>


<tr>
<td class="org-left">`#etn`</td>
<td class="org-left">ethnography; countries and geography</td>
</tr>


<tr>
<td class="org-left">`#his`</td>
<td class="org-left">history</td>
</tr>


<tr>
<td class="org-left">`#komp`</td>
<td class="org-left">some computer-science terminology according to the [Komputada Leksikono](http://www.esperanto.mv.ru/KompLeks/UTF8/DEFAULT.html)</td>
</tr>


<tr>
<td class="org-left">`#mav`</td>
<td class="org-left">redundant words, which are used by some esperantists, though they are less precise and unnecessarily complicate the language; e.g. *olda* (*maljuna* **or** *malnova*), *mava* (= *malbona*)</td>
</tr>


<tr>
<td class="org-left">`#pers`</td>
<td class="org-left">given names and names of important personalities (e.g. *Petro, Zamenhof* &#x2026;)</td>
</tr>


<tr>
<td class="org-left">`#pok`</td>
<td class="org-left">the words specific to my idiolect</td>
</tr>


<tr>
<td class="org-left">`#rar`</td>
<td class="org-left">rare words which may coincide with a misspelling of a more frequent word; e.g. *ajuna*, *komanditi*, *liona*</td>
</tr>


<tr>
<td class="org-left">`#var`</td>
<td class="org-left">variant which I do not use but which is frequent enough (e.g. *kemio, tekniko* opposed to *hxemio* and *tehxniko*)</td>
</tr>


<tr>
<td class="org-left">&#x2026;</td>
<td class="org-left"> </td>
</tr>
</tbody>
</table>

You can `grep`,

    $ grep '#mav' ./src/vortoj.l3 | less

in order to see if you feel like me about them; you can either remove
all of them from the target dictionary, or remove the `#mav` mark from
those you do use and like; the default setting in the `./Makefile` is

    short_list      =  komp,etn,Eujo,pers,mll
    eo_list         =  $(short_list),drv
    esperanto_list  =  $(short_list),arhx,mav,rar

Unless included in the custom list (like `eo_list`), a marked word is
considered as a special one and is excluded from the build; the above
custom lists thus specify “positive criteria”. But some words have
several marks (e.g. a word may be “ethnic” and “obsolete” or dangerously
close to a misspelling of a frequent word). Thus a “negative” filtration
is available via the `$(sen)` macro; you can specify it in
`src/Makefile`, or in the command-line:

    $ make eo sen="arhx,rar"

In this way some otherwise eligible words from the `komp` or `etn` or
`mll` categories shall be discarded, if they are also obsolete or rare.


<a id="org9a9a298"></a>

# Building vim spell

This package can now be used to build a vim spell dictionary:

1.  Customize the lexical coverage as is described for the ispell
    build.
2.  Convert the affix file to the my-spell format used by vim-spell and
    build the `eo.utf-8.spl` dictionary.
3.  Install it into a directory where `vim` expects to find it.

These steps are done by the `ispell-eo/Makefile` in `ispell-eo/oo`
directory (the name `oo` is a remnant from *Open Office*, which
equally used the `myspell` format).

At the step (1) it is advisable to include the entries marked with
`#mav` and `#rar`: in vim-spell they will receive the qualifications
`BAD` and `RAR` and as such will be warn about unless you accept them
(in a runtime session).

Before invoking the `Makfile` check its `vim_spl_install_dir`
variable; by default it is set for a local install in your
`$(HOME)/.vim/spell` directory; you may prefer to set it globally for
a system-wide install.

After that say

    $ make vim
    $ make install_vim

(or `sudo make install_vim` for a system-wide install).


<a id="org46682bf"></a>

# Usage

One same ispell dictionary, e.g. `eo.hash`, can be used with several
input representations, specified in its affix file (e.g. `eo.aff`).
Each such representation is given an identifier in the affix file;
`eo.aff` defines the following representations:

1.  `tex` is suited for TeX, and imitates the *dead keys:*
    `e^ho^san^go ^ciu^ja^de`. It is the representation for which
    ispell-eo was originally designed (in connection with the
    “Komputika Leksikono”), and it remains the basic representation
    used in ispell-eo internally.
2.  `cxirkaux` identifies x-style representation, which is the most
    popular ASCIIization of the Esperanto letters; `ehxosxangxo
       cxiujxauxde`.
3.  `latin3` is the straightforward application of ISO 8859-3 (aka
    Latin-3), which gives all the accented esperantic letters their
    canonical form; the apostrophe is represented as the ASCII ='=
    (0x27).
4.  `latin3a` is like `latin3`, except that the apostrophe is
    represented by `´` (0xB4, spacing acute; see below the section on
    “Apostrophe”??).
5.  In `utf8` the accented letters are coded by 2 bytes each according
    to the UTF-8 encoding; apostrophe is encoded as `’` (U+2019,
    `#xE2 #x80 #x99`, right single quotation mark).

Unlike Aspell or Hunspell, Ispell allows switching among these
representations (via `-T` flag: `-T tex`, or `-T utf8` etc, see below)
while using the one same hash file; this is an advantage of Ispell.
OTOH variation in the word provision (e.g. inclusion or exclusion of
the “bad” words) requires compilation of separate hash files (in our
case, `eo.hash` vs `esperanto.hash`); here Hunspell is more flexible,
it makes it possible to retain the bad words and issue warnings about
their use.

Some usage examples below are illustrated with specimen files from the
`ispell-eo/doc` directory (which in my case is in my local
`$HOME/Git/` repository). This should give you an idea about where and
what kind of files could be used in a given situation.


<a id="command-line"></a>

## Command line

You can use ispell in a stand-alone mode, as a console program. The
usage depends on the encodings available at your terminal emulator for
representing the Esperanto letters.


<a id="org2510ace"></a>

### ASCII terminal

This is available anywhere, you can use the `tex` (TeX) or the
`cxirkaux` representation. In the `tex` representation the word
*cxirkaux* takes the form `^cirka^u`; in the latter case the esperantic
accents are expressed with the letter `x`. In order to check a
file with the ispell dialog editor simply type (without the `$` prompt):

    $ ispell -d eo -T cxirkaux $HOME/Git/ispell-eo/doc/ekz.cx

or

    $ ispell -d eo -T tex $HOME//Git/ispell-eo/doc/ekz.^c

Unfortunately, the editor is unaware of multibyte characters.


<a id="unicode"></a>

### Unicode

The modern Linux terminals use the UTF-8 encoding by default, so you
can say there:

    $ ispell -d eo -T utf8 $HOME/Git/ispell-eo/doc/testo.u8

or submit test words in the command line:

    echo "Cxiujxauxda renkontigxo" | ispell -T utf8 -d eo

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: not found
    how about: renkontigo
    
    word: 

(The suggestions are presented in the TeX notation.)

You can also get a list of all misspelled or unknown words from a text:

    ispell -d eo -T utf8 -l < $HOME/Git/ispell-eo/doc/Cart.u8

    fruictier
    tistaro
    ĉef
    ron
    Eĵektive
    eslas
    atta
    Cu
    inlencis
    juĝaiaj
    mailongigis
    elkurbigis
    ŝuitrojn
    korekli
    Arniko
    konĵorme
    Tli

(The file `Cart.u8` is produced by OCR of a letter by Th. Cart to Paul
Fruictier, published as a foreword to “Esperanta Sintakso” by the
latter.)

Again, the Ispell editor is available for this case too, and the
esperantic characters are shown as expected; but the non-Latin3
characters aren't made known to the editor, thus they are shown as
mojibake.


<a id="orgba8336b"></a>

### Latin-3

The ISO 8859-3 encoding, aka Latin-3, is now rarely used; yet it is for
such an environment that ispell has been developed. Presently a
Latin-3 terminal is not readily available; one could install `xterm` and
its `luit` package; and then

$ luit -encoding 'ISO 8859-3'
$ ispell -d eo -T latin3 $HOME/Git/ispell-eo/doc/testo.l3
\#+end<sub>src</sub>

     =$ ispell -d eo = /filename/

In order to get a list of all misspelled or unknown words from a text in
the Latin-3 encoding you could say (in Linux):

    export LC_ALL=eo_XX.ISO-8859-3
    ispell -d esperanto -T .l3 -l < FILENAME | sort -u

Some more comments are in `legu-min.l3` (in esperanto).


<a id="orga2734c2"></a>

## Emacs

Normally I use ispell in an Emacs session. Emacs is distributed with
the `ispell.el` package, which provides an interface with the ispell
processes. This package includes, among others, specifications for
interactions with the permissive `esperanto` dictionary in two
representations: `latin3` and `tex`; within the  are named resp.
`esperanto` and `esperanto-tex`.

Don't be affraid of the name `latin3`: your text may be (and normally
is) in Unicode; the program seamlessly converts your UTF-8 words to
Latin-3 and back, using it behind the scenes, so that you never notice
it. (The only exception is the limitation of the repertoire of the
characters available for word representation: you cannot use the curly
apostrophe, which is absent from Latin-3, and thus cannot be passed to
ispell).

As mentioned earlier, the Esperantic ispell dictionaries can accept the
UTF-8 input; alas, for some bugs in `ispell.el` conversions from the
interger unicode numbers to multibyte UTF-8 and back “may result in the
evil /misalignment error/”; the interaction with 1-byte codes (e.g.
Latin-3) is more stable. 

In my practical work I prefer the stricter `eo.hash` dictionary (and
the x-style ASCIIization); both are made available via the
`./emacs/ispell-ini.el` customization included in this distribution.
You may copy it into your `site-lisp` (or somewhere else on your emacs
`load-path`), and put this into your `.emacs`:

    (load "ispell-ini.el")


<a id="orgd488c38"></a>

# Apostrophes

In English, the apostrophes appear either inside a word, like in
*isn't* (and this case is addressed by the `boundarychars`
specification), or after a well-formed word, like in *for goodness'
sake* (where the exclusion of the apostrophe does not raise a false
error report)

    echo "'Tis the season to be jolly!" | ispell | head -2

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: how about: Dis, His, Is, Its, Otis, Pis, Sis, T's, TAs, This, Ti, Ti's, Tia, Tic, Tics, Tie, Ties, Tim, Tims, Tin, Tins, Tip, Tips, Tit, Tits, Ti s, Ti-s, Ts, TVs, T is, T-is, Vis

(&#x2026; To be continued &#x2026;)

    @(#) International Ispell Version 3.4.02 08 Jan 2021
    word: how about: Dis, His, Is, Its, Otis, Pis, Sis, T's, TAs, This, Ti, Ti's, Tia, Tic, Tics, Tie, Ties, Tim, Tims, Tin, Tins, Tip, Tips, Tit, Tits, Ti s, Ti-s, Ts, TVs, T is, T-is, Vis

\*

