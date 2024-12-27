# Notoj pri la vortaro ispell_eo

La vortaron kompilis Sergio Pokrovskij. Ĝi estas libere uzebla laŭ la _Ĝenerala
Publika Permesilo._

> Copyright © 1997–2024 Sergio Pokrovskij
>
> This dictionary is available on the terms of GNU General Public License,
> [version 2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
> (Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA).

Similaj (kvankam ne tute samenhavaj) notoj disponeblas ankaŭ
[en la angla lingvo](https://pok49.github.io/ispell-eo).

## Postuloj (kion vi bezonas)

Por munti la vortarojn el la fontoj vi bezonos la kutimajn uniksaĵojn:

 1. `make`
 2. `sed` (kaj eĉ speciale, GNUa `sed`, v. 4.0 aŭ postan – la skripto
    `tools/filtru` bezonas «`\l`» en regulesprimoj) 
 3. `m4`
 4. `sort`
 5. `ispell`, informoj troveblas [ĉi tie](http://fmg-www.cs.ucla.edu/geoff/ispell.html).

Se vi jam havas la programon ispell en via komputilo, atentu ke ekde la versio
3.0 de la esperanta vortaro vi bezonos ĝin muntita kun  
`MASKBITS`≥64;  
por kontroli, kion vi havas, uzu la opcion `-vv`:

    $ ispell -vv | grep BITS
           MASKBITS = 64

Se vi ricevos «MASKBITS = 32», necesos remunti la ispell-programon. (Tamen
ŝajnas ke nun «MASKBITS = 64» estas sufiĉe ofta.)

## Lingvaj konsideroj

Bedaŭrinde (aŭ feliĉe) Ispell estas iom stulteta, kaj ne aldonas la sufiksojn
rekursie (tamen ĝi kapablas konstrui produton el prefiksoj kaj sufiksoj).
Krome, mi ne sukcesis kompreni la meĥanismon de vortkunmeto per tildo+flago,
kiu supozeble povus helpi produkti vortojn kiel «nomkarto» el nomo-o+karto.

Tial mi uzas pretajn vortkunmetojn el PIV kaj kelkaj tekstoj, kiujn mi ĝis nun
kontrolis. Tio estas kaj bona, kaj malbona.

Tio estas bona, ĉar tiel mi malmultigas la nombron de absurdaj, kaj probable
eraraj, kunmetoj. Mi preferas malimplice konfirmadi vorton dubindan ol
preterlasi eraron.

Sed tio estas danĝera, ĉar se la literumilo estas tro suspektema, la uzulo tro
hastas malatenti la sennombrajn avertojn, kaj same facile akceptas erarojn.

Mi esperas, ke baldaŭ mi atingos ian saturiĝon, kiam la nombro de demandoj
estos ne tro ĝena; kvankam estas tre probabla, ke nova aŭtoro kun siaj apartaj
preferoj devos dum kelka tempo aldonadi siajn plej ŝatatajn vortojn.

Por fari la kernon mi uzis la vortojn oficialajn, Fundamentajn kaj
komunlingvajn el PIV (mi elŝutis ĝin el la Nederlanda FTP-ejo). Tio
evidentiĝis ne tute taŭga, ĉar multaj oftaj vortoj, ekz-e

> agnoski  
> elektrono  
> generi  
> intonacio  
> nocio

estis neoficialaj (kelkaj oficialiĝis poste), dum inter la oficialaj abundas
balasto kaj tre specialaj terminoj ĥemiaj, medicinaj kaj biologiaj, kiujn oni
normale metus en specialajn vortarojn; ekz-e

> eminenca  
> onobriko  
> stofo

Tiel en la vortaroj aperas danĝeraj paronimoj:

> cerambiko – ceramiko  
> eseno – esenco  
> preĝrado (malfaciligas kontrolon de pli ofta «preĝado»)  
> enstaligi – instali  
> kok/eto – koket(ulin)o  
> morfio (izomorfio, homomorfio) – morfino  

ktp. Mi provis forigi tiajn specialajn vortojn el la komuna kerno, sed tio
estas ankoraŭ ne finfarita.

Krome, mi ŝanĝis karakterizaĵojn de kelkaj vortoj:

* «Volonti» por mi estas verbo netransira;
* «Rajti» por mi ne formas pasivon (rajtata…).

### La dividostreko

Pro relative multaj vortoj, kiaj

> ekz-e  
> n-ro  
> vid-al-vide

ktp mi faris la dividostrekon litero. Sekve tre multaj kombinoj, ekz-e «angla-
rusa», estas registrendaj kiel apartaj vortoj. Mi ne vidas bonan solvon por
tiu problemo.

### Senbalastigo kaj kohero

Mi faris la vortaron por mi mem, kaj ĝi spegulas miajn preferojn. Mi intence
lasis nur tiujn formojn, kiujn mi preferas, por ke la literumilo avertu min
pri devioj de mia persona normo (tio estas utila ankaŭ por riveli malkoheraĵon
en mia fakta uzado, kaj eventuale, por rekonsideri miajn preferojn). Tiel
ekz-e mi rekomendas

* «Narkotaĵo» anstataŭ «Narkotiko» (ambaŭ oficialaj)
* «francaĵo anstataŭ «francismo»
* «avio» anstataŭ «aviadilo», ktp.

### Uskleco

* Etnajn nomojn mi skribas etlitere:

  > ruso, germano, usonano

  (sed ispell ebligas nomuskligi ajnan vorton minusklan).

* Landajn nomojn, ĉeflitere:

  > Rusio, Germanio, Usono.

* Same pri la superetnaj lingvoj:

  > Esperanto, Latino, Slavono, Svahilo, Sanskrito.

* Iom-post-iom mi transiras al minuskla skribo de ĉiuj adjektivoj kaj
  adverboj (_pariza, usona_ ktp).

### La litero _ĥ_

Mi zorgis pri la rajtoj de la litero **ĥ**. Nome, kvankam mi akceptis
la tradicion anstataŭigi ĉiujn **ĥr** kaj **rĥ** per *kr* kaj *rk*
(do, *Kristo, kristalo, arkaika, orkestro*) – por komplezi la
francojn, por kiuj tiuj kombinoj estas malfacilaj – mi tamen laŭeble
konservis la diskriminaciatan literon en ĉiuj aliaj kombinoj (vd en la
[Komputada leksikono](http://esperanto-mv.pp.ru/KompLeks/HX.html)).

### Neceso kaj sufiĉo

Laŭ mia lingvouzo, mi preferas la mallongajn formojn

  * eblo, -emo, -indo, -ivo anstataŭ
  * ebleco, -emeco, -indeco, -iveco.

La -eco-substantivojn mi plejparte lasis sen multenombro, ĉar plej ofte
por tiuj abstraktaĵoj ĝi ne havas sencon (ekz-e, oni senhezite povas
paroli pri «spritaĵoj» – kaj nur en tre speciala, aparte kontrolinda
senco, pri «spritecoj»). Se tio montriĝos ĝena, mi aldonos la
multenombron por la ec-vortoj.

### Lingvaj preferoj

La vortokolekton mi ĉerpis el PIV, sed mi redaktis ĝin laŭ miaj preferoj. Sed
mi ne havis tempon trakribri la tutan stokon. Tial ne ĉio en ĉi tiu vortaro
esprimas miajn aŭ PIVajn preferojn, sed estas miksaĵo de ili.

Simile, la landonomojn mi pruntis de Bertilo Wennergren, sed kelkajn vortojn
mi korektis laŭ miaj preferoj. Mi restaŭris la Zamenhofan sistemon por
«Meksikio» kaj kelkaj similaj landoj; mi respektis la tradiciojn de lokaj
esperantistoj, kiam ili pli fidele ol la Akademio konservas la esperantistan
tradicion (Kameruno → Kamerunio, vjetnamo → Vjetnamio ktp); kaj mi retenis
malpli oftan sed pli «oportunajn» formojn por la nomoj kiel _ukrajno →
Ukrajnio, maŭro → Maŭrio_.

