# Pri apostrofoj kaj citiloj en Esperanto

Ĉi tiu noto estas argumentaro por la maniero trakti la apostrofojn en
la projekto [ispell-eo](https://github.com/pok49/ispell-eo) (Esperanta vortaro por la literumilo [Ispell](https://en.wikipedia.org/wiki/Ispell)).


## Enhavo

1.  [Uzo de apostrofoj en diversaj lingvoj](#org7b8c48a)
    1.  [En Esperanto](#org08f6062)
    2.  [France](#orgebbe088)
    3.  [Angle](#org1e936d3)
2.  [Pri la citiloj](#org750c220)
    1.  [Citaĵo en citaĵo](#orgacd9991)
    2.  [Memreprezentaĵoj kaj sencodifinoj](#orgbd95464)
    3.  [La rekta parolo](#org8feba5c)
        1.  [La maniero franca-pola-rusa](#org8e3fa17)
        2.  [La maniero ĝermana (angla-germana)](#orge834881)
        3.  [Aliaj signoj similaj](#org3af6513)
3.  [Kodoj](#org72ada1b)
    1.  [Tajpiloj kaj Askio](#org9ffc3ca)
    2.  [La 8-bitaj kodoj](#org382391a)
    3.  [Unikodo](#orge60b253)
    4.  [WGL4](#orgd4a624e)
    5.  [Vikipedio](#org65e69d9)
4.  [Komparo de literumiloj](#orgbf777cd)
    1.  [Ispell](#org0b15f28)
        1.  [La Emaksa interfaco](#orgb5ab6c6)
    2.  [GNU Aspell](#orgab9cb9a)
    3.  [Hunspell](#orgb47b992)
    4.  [Vim](#org6359cdc)
5.  [Konkludo](#orgee45095)


<a id="org7b8c48a"></a>

# Uzo de apostrofoj en diversaj lingvoj

Per si mem, lingve, en la propra tradicia Esperanto, la apostrofoj
prezentas nenian problemon. Sed en la reala vivo necesas atenti la
apartaĵojn de programaro verkita por aliaj lingvoj, precipe por la
angla, kiun programaron multaj esperantistoj praktike uzadas.


<a id="org08f6062"></a>

## En Esperanto

La programara problemo koncernas la vortolimojn: ĉu apostrofon
literumilo enprenu kiel parton de vorto – aŭ traktu ĝin kiel disigan
signon interpunkcian? En Esperanto la apostrofo estas traktenda kiel
vorta ero, simile al la literoj. Alie la apostrofitaj vortoj, tiom
oftaj en poezio, kaŭzos falsajn erarraportojn. Ekz‑e kontrolante la
verson:

> en nova formʼ eksonis nova kantʼ

la literumilo devas apartigi la vortojn ‹formʼ› kaj ‹kantʼ› kune kun
ilia apostrofo; la nudaj ‹form› kaj ‹kant› ne estas akcepteblaj. En
la tekstoprilaboraj programoj Esperantaj apostrofo traktendas kiel
speco de litero.

<a id="org8a54e4f"></a>


<a id="orgebbe088"></a>

## France

France (kaj en aliaj lingvoj latinidaj) oni rajtas rigardi apostrofon
kiel disigilon (unu el la signoj interpunkciaj), apartigantan
leksikajn unuojn, ekz‑e artikolon disde la rilata vorto:

> *le* + *enfant* → *l’enfant*.

Tio oportunas ekz‑e ĉe legado de franca teksto: duobla alklako sur
*l’enfant* apartigas nur ‹enfant›, kio faciligas konsulton de traduka aŭ
sencodifina vortaro.

Ŝajnas ke ĉi tiu simpla traktado povus faciligi tekstoprilaboradon,
ekz‑e redukti la literumilajn vortarojn; tamen tiucele ankaŭ por la
franca lingvo utilas trakti apostrofon kiel vorteron, ĉar tio ebligas
kontroli multajn erarajn formojn, kiaj <del>*l’enfants*</del>, <del>*l’anciens*</del>
(plurnombre elizio ne okazas: *les enfants, les anciens*),
<del>*s’être*</del> (kp *s’asseoir*), <del>*presqu*</del> (kp *presqu’île*) ktp.<sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>

En la literatura lingvo la apostrofo aperas ĉiam vortomeze, inter
literoj, kvankam en imitado de malzorga prononco aŭ ĵargono eblas
ankaŭ la vortofina pozicio (kiel en Esperanto):<span lang="fr">
*pauv’ con* </span>(anstataŭ<span lang="fr">
*pauvre con*).</span>


<a id="org1e936d3"></a>

## Angle

En la angla lingvo okazas kolizio inter ortografio kaj interpunkcio:
la apostrofo estas uzata de ambaŭ malsammaniere.

Ortografie la apostrofo estas **parto de vorto**, kiel en la franca:
*boy’s, doesn’t, we’ll, you’re, o’er …* Apostrofo regule aperas
finvorte en la poseda formo post *s*, ekz‑e *ladiesʼ hats*. Malpli
ofte aperas apostrofo vortkomenca:

> *'Tis the last rose of summer &#x2026;*

Interpunkcie la apostrofo estas uzata kiel disigilo, **signo nevorta**,
kiel ferma citilo (kaj en la prezento tajpa aŭ Askia, ankaŭ kiel
citilo malferma).

Por solvi tiun kolizion en la anglalingva literumado oni traktas la
signon ‹'› kiel apostrofon (do, vorteron) el la pozicioj interliteraj
(*isn't* ktp), kaj kiel disigilon en la okazoj ceteraj. Tio ne kaŭzas
problemojn en la posedaj formoj (kia *ladies'*), ĉar la antaŭapostrofa
bazo ja estas (devas esti) regula vorto angla; la problemo restas ĉe
la komencvorta apostrofo (kia *ʼtis*) – sed tiaj vortoj estas
maloftaj, kaj ofte koincidas kun aliaj anglaj vortoj: *ʼbout* (el
*about*) koincidas kun *bout; 'less* (el *unless*) koincidas kun
*less* ktp. Kompreneble ĉi tiu elturniĝo ne prosperas en Esperanto,
krom esceptokaze; ekz‑e ĉe la nevortaj apostrofoj ‹’› (U+2019) en la
*Hamleta* verso

> De l’ ter’ al la ĉiel’ ĝi laŭte krias

iuj literumiloj plendas pri ‹ter›, sed akceptas ‹ĉiel›.


<a id="org750c220"></a>

# Pri la citiloj

La Esperantaj tekstoj ekzistas en 3 formoj: manskriba, tipografia, tajpa.
En la frua periodo ĉefis la du unuaj; de post la Unua  Mondmilito kaj
ĝis 1980-aj jaroj ĉefis la tajpiloj; poste kaj ĝis nun plej gravas la
prezentoj komputilaj, kiuj per la sortimento da disponeblaj signoj
egalas aŭ eĉ superas la iaman tipografion. Ĝuste la komputilaj
prezentoj precipe interesas nin ĉi tie; tamen ili ja evoluis el la
tipografiaj, kaj ilin forte influis la tradicio tajpada. Fakte la
tajpado plu influas, ĉar Askio kaj la klavaroj ja esence restas tajpilaj.

Zamenhofo ne opiniis la formon de citiloj grava trajto de la
lingvo. En la Fundamenta Ekzercaro aperas 3 citilaj paroj, sen
ia ajn sencodistingo:

„ “ – (ĵargone nomata «99—66») – 26-foje;  
« » – (duoblaj angulaj citiloj) – 8-foje, plus 12 aperoj en la
*Antaŭparolo*, sume 20-foje;  
“ ” – (ĵargone nomata «66—99») – 20-foje.

La arbitrecon kaj samsignifecon de la uzoj klare ilustras «La feino»,
fabelo dispartigita inter §§ 11, 13–15, 17, 19, 21 kaj 23: komence
(ekde §15) la dialogajn dirojn markas “…”; sed en §21, «…». Mi dubas,
ke tiu malordo estas sekvo de konscia miksado. (Al mi mankas faktoj,
sed mi supozas, ke preparante iun eldonon de la *Ekzercaro* Zamenhofo
kungluis pecojn el diversaj pli fruaj eldonoj, kompostitaj laŭ diversaj
tipografiaj kutimoj.)

Plue, en la teksto de FE disponebla [en la Akademia retejo](https://www.akademio-de-esperanto.org/fundamento/ekzercaro.html) oni trovas
ĉiujn 3 citilajn specojn, sed ne ĉiam en tiuj lokoj, kie ili aperas en
la papera eldono de la 1905ª jaro.

Kvankam tio ne rilatas al la tradicio de Esperanto, tamen notindas
ankoraŭ unu strangaĵo de la Fundamento: la gramatiketo ruslingva havas
la germanajn citilojn 99—66:

> **13.** На вопросъ „куда“ … &#x2013; p. 20
> 
> **15.** Такъ называемыя „иностранныя“ слова … &#x2013; p. 21

dum en la teksto pollingva aperas la angulaj citiloj francaj:

> **13.** Na pytanie « dokąd » …
> 
> **15.** Tak zwanie « wyrazy cudzoziemskie » … &#x2013; p. 25

kvankam la ĉefformoj de la citiloj en tiuj du lingvoj estas (almenaŭ
nun) ĝuste inversaj: «ruse» kaj „pole“.

Racia elekto de citiloj preferindaj en Esperanto devas atenti la
eblon de vortofinaj apostrofoj. Komparu la prezentojn de frazo el FE
§27:

1.  Anstataŭ «la» oni povas ankaŭ diri «lʼ»
2.  Anstataŭ „la“ oni povas ankaŭ diri „lʼ“
3.  Anstataŭ “la” oni povas ankaŭ diri “lʼ”.

Por mi, (1) estas la plej bona kaj klara; tamen Zamenhofo ial uzis
ĉi-okaze la formon (2), malpli klaran, sed ankoraŭ legeblan; la formon
(3) mi opinias maltaŭga. Tamen ĝuste ĝin preferas PIV, «Esperanto»,
«La Ondo de Esperanto».

En diversaj landoj la kurbaj citiloj “x” estas manskriba rondigita
varianto de la angulaj citiloj «x» tipografiaj; kaj la kurbaj citiloj
„x“ estas rondigita formo de la »internen montrantaj« citiloj, kutimaj
en la interpunkcio germana. La formoj «x» kaj „x“ estas tradiciaj en
Esperanto; la formo »x« estas maloftega kaj nenorma.

Estas ankoraŭ unu speco, uzata i.a. de «Monato»: „x” (99—99)<sup><a id="fnr.2" class="footref" href="#fn.2" role="doc-backlink">2</a></sup>. Ĝi ne
estas tradicia, ĝi ne aperas en la Fundamento; kaj ĝi estas same aĉa,
kiel la formo 66—99, ĉar ambaŭ formoj havas la saman ferman citilon,
ĝene gluiĝantan al eventuala apostrofo: „l’”.


<a id="orgacd9991"></a>

## Citaĵo en citaĵo

Plureco de la citilaj specoj utilas okaze de citaĵoj enmetitaj en
citaĵon. Estas kiel pri la krampoj en la matematikaj formuloj: la esprimo

    7 – {[(10 – 6) × 5] + 13}

legeblas pli facile ol

    7 – (((10 – 6) × 5) + 13)

Ho ve, allasinte plurajn citilajn formojn, Zamenhofo ne profitis la
eblojn kiujn tio donas. Ekz‑e en sia traduko de «La batalo de l' vivo»
(1891):

> „aldonu ankoraŭ la vortojn „kaj fingringo“, kaj mi volas la ambaŭ
> sentencojn pendigi en la loĝejo anstataŭ la portreto de mia mastrino.“

Ĉu Zamenhofo malvolis kompliki la lingvon?

Ĉiel ajn, en la reeldono de «La batalo», serioze reviziita de la
britaj editoroj, la citiloj estas diferencigitaj (kio estas bona), sed
por la internaj citiloj estas uzataj la anglaj kurbaj citiloj unuoblaj 6-9
(kio estas bedaŭrinda):

> “Dio nin gardu de tio ĉi! Ŝi vivu kaj … poste ŝi diru kun tiu franco:
> ‘La komedio estas finita, faligu la kurtenon.’”

Nuntempe kiam la komputiloj elskatole disponigas riĉegan sortimenton da
signoj, kaj inter ili ĉiujn citilojn Fundamentajn, estas neracie uzi
la konfuzajn apostrofajn citilojn. En la [moderna revizio](http://kovro.heliohost.org/books/la_batalo/batalof.html) de la
«Batalo» tiu ekzemplo havas do la formon:

> «Dio nin gardu de tio ĉi! Ŝi vivu kaj ridadu pri tio ĉi kiel longe ŝi
> povas ridi, kaj poste ŝi diru kun tiu franco: „La komedio estas
> finita, faligu la kurtenon.“»

Simila kungluiĝo povas okazi ankaŭ komence de la ekstera citaĵo, kaj
ankaŭ ĉi-okaze la sammaniera malambiguigo egale klaras:

> «„Faru ion al la homoj, por ke ili nenion al vi faru“, vi kredeble
> pensas?» diris sinjoro Snitchey.

(kp “‘Faru … al vi faru’ …”).

La Unikoda normo rekomendas unuoblajn angulajn citilojn por la
internaj citaĵoj<sup><a id="fnr.3" class="footref" href="#fn.3" role="doc-backlink">3</a></sup>; tamen ene de la duoblaj angulaj citiloj tio
estas same konfuza, kiel la anglaj apostrofaj citiloj ene de la
duoblaj anglaj citiloj kurbaj. Por facila distingeblo la internaj
citiloj devas esti alispecaj ol la eksteraj.


<a id="orgbd95464"></a>

## Memreprezentaĵoj kaj sencodifinoj

Aparta uzo de la citiloj estas marki memreprezentaĵojn (aŭtonimojn), t.e.
tiajn uzojn de vortoj aŭ aliaj signoj, en kiuj ili reprezentas ne la
*signaton*, sed la *signanton*, t.e. sin mem. Tiaj uzoj oftas en
lingvoscienco, kaj plurajn ekzemplojn disponigas la *Fundamenta
Ekzercaro* (FE):

> &#x2026; tiel same ni ankaŭ diras: „la birdo flugis en la ĝardenon, sur la
> tablon“, kaj la vortoj „ĝardenon“, „tablon“ staras tie ĉi en akuzativo
> ne ĉar la prepozicioj „en“ kaj „sur“ tion ĉi postulas, sed nur ĉar
> ni volis esprimi direkton &#x2026; — FE §28

> La sufikso «um» ne havas difinitan signifon. &#x2013; FE §42.

Zamenhofo neniam apartigis ĉi tian uzon de la citiloj; sed en fakaj
tekstoj lingvosciencaj oni ofte uzas tiucele la anglajn citilojn
apostrofajn: ‘ĝardenon’, ‘tablon’, ‘sur’&#x2026;

Tio estas konfuza kaj maloportuna. Mi koncedas, ke la duoblaj
citiloj ĉirkaŭ mallonga vorto aŭ unuopa signo povas impresi kiel io
peza, iom grandioza; sed ĝenerale disponeblaj estas la unuoblaj angulaj
citiloj ‹x›, kiuj aspektas sufiĉe modeste kaj estas malambiguaj. Kp:

> Anstataŭ ‘la’ oni povas ankaŭ diri ‘lʼ’  
> Anstataŭ ‹la› oni povas ankaŭ diri ‹lʼ›.

> La tajpila-Askia apostrofo ‹'› povas reprezenti
> 
> -   la apostrofajn citilojn (la malferman ‹‘› aŭ la ferman ‹’›),
> -   proprasencan apostrofon ‹ʼ›,
> -   minutsignon ‹′›,
> -   dekstran kornon ‹′› &#x2026;

En la anglaj apostrofaj citiloj tia frazo estas malfacile legebla
(resp. ‘'’, ‘‘’, ‘ʼ’, ‘’’, ‘′’, ‘′’), kaj tute prave la franca
Vikipedio uzas la unuoblajn angulajn citilojn en la koncernaj partoj de
la artikolo «[Apostrophe (typographie)](https://fr.wikipedia.org/wiki/Apostrophe_(typographie)#Ambigu%C3%AFt%C3%A9s)». Kaj ankaŭ ĉe la malsupraj signoj la
apostrofaj citiloj aspektas aĉe: punkto ‘.’; zoeto ‘¸’ – pli klaras  ‹.›,  ‹¸›.

Tiusence anstataŭ la citilojn oni ankaŭ uzas kursivon.

Alia lingvista uzo de la apostrofaj citiloj estas apartigi
sencodifinojn. Jen ekzemplo kie memreprezentaĵo aperas kursive, kaj
sencodifinoj, en citiloj. Ankaŭ ĉi-okaze uzeblas unuoblaj angulaj citiloj<sup><a id="fnr.4" class="footref" href="#fn.4" role="doc-backlink">4</a></sup>:

> *ruĝi* = ‘esti ruĝa, impresi ruĝe’, sed nepre ne ‘igi ruĝa’ nek ‘iĝi ruĝa’  
> *ruĝi* = ‹esti ruĝa, impresi ruĝe›, sed nepre ne ‹igi ruĝa› nek ‹iĝi ruĝa›

Probable tiuj estas la solaj iom internaciaj uzoj de la apostrofaj citiloj.


<a id="org8feba5c"></a>

## La rekta parolo

Unu el la ĉefaj funkcioj de la citiloj estas prezenti la rektan
parolon. Estas 2 specoj de rekta parolo: monologo kaj
dialogo. Monologon oni plejparte encitiligas; sed pri dialogoj la
naciaj (kaj sekve ankaŭ la Esperantaj) tradicioj varias.

En Esperanto kunekzistas du manieroj prezenti dialogojn: la ĝermana
kaj la franca-pola-rusa. Zamenhofo uzadis jen unu, jen la alian.


<a id="org8e3fa17"></a>

### La maniero franca-pola-rusa

En ĉi tiu maniero dialogo estas konceptata ne kiel pluro da monologoj,
sed kiel aparta speco de parol-agado. Ĉiu eldiro komencas novan
alineon kaj estas antaŭata de haltostreko:

> – Estimata sinjorino kredeble havas bezonon al la informa oficejo? –
> diris la mastrino de la loĝejo.
> 
> – Jes, sinjorino, – respondis la venintino. – Mi estas Marta Świcka.
> 
> – Volu sidiĝi kaj atendi momenton, ĝis mi finos la interparoladon kun
> tiuj sinjorinoj, kiuj venis antaŭe. &#x2013; («Marta»)

<a id="orgf64b402"></a>
Tiu aparta interpunkcio ebligas, interalie, klare diferencigi la
dialogon (la eldirojn eksterigatatajn) disde la paralela monologo interna
(rekta parolo enmensa), ekz‑e

> – Vi estas tre modesta … Sed mi dezirus ekscii ion pri vi, pri via
> familio, pri via patro, pro kiu vi forlasas nin.
> 
> «Kial ŝi diras tion al mi?» – pensis Bazarov.
> 
> – Ĉio ĉi tute ne estas interesa, – diris li voĉe, – precipe por vi, ni
> estas malaltaj homoj … («Patroj kaj filoj», ĉap. 17ª)<sup><a id="fnr.5" class="footref" href="#fn.5" role="doc-backlink">5</a></sup>

Ankaŭ la eningita rekta parolo apektas pli bone:

> – Efektive, okulfrapis, kiam mi vidis lin post tiu travivaĵo, lia
> mirinda sereneco. Li diris: «Mia animo similas vastan trankvilan
> lagon». Ĉu vi iam aŭdis pri iu, kiu, en unu tago, transiris el
> plej profunda deprimiĝo en perfektan serenecon kun plena malapero
> de ĉiuj psikaj simptomoj?<sup><a id="fnr.6" class="footref" href="#fn.6" role="doc-backlink">6</a></sup> 

Similaj ekzemploj troveblas ekz‑e ankaŭ en la Zamenhofa traduko de «Marta».

**Noto.** En la cirilalfabeta tipografio oni markas la dialogojn per
haltostrekoj 0.8 em longaj – pli longaj, ol la angla N-streko
(*en-dash*, 0.5 em), sed ne tiom grandiozaj, kiel la angla *M-dash*
(1 em). Bedaŭrinde, Unikodo kaj plimulto da tiparoj disponigas nur la
anglajn haltostrekojn. En la ĉi-supraj ekzemploj mi uzis N-strekojn
(U+2013).


<a id="orge834881"></a>

### La maniero ĝermana (angla-germana)

En tiu maniero dialogo aperas kiel simpla sinsekvo da rektaj paroloj
monologaj, ĉiu el kiuj komencas apartan alineon:

> „Ĉu vi ion vidis, Britain? ion aŭdis?“
> 
> „Estas tro mallume, por povi malproksime vidi, kaj tro multe da bruo
> en la domo, por povi ion aŭdi“, respondis la servanto.
> 
> „Tio ĉi estas vera! Tiom pli gaja estos la akcepto. Kioma horo nun estas?“
> 
> „Ĝuste la dekdua, sinjoro. Li devas jam baldaŭ veni, sinjoro.“<sup><a id="fnr.7" class="footref" href="#fn.7" role="doc-backlink">7</a></sup>

Malpli nuancita, tiu maniero estas malpli esprimiva. Ekz‑e la [supre
citita peco](#orgf64b402) el «Patroj kaj filoj» jene aspektas en la misredaktitaj
eldonoj oftaj en la Reto<sup><a id="fnr.8" class="footref" href="#fn.8" role="doc-backlink">8</a></sup>:

> “Vi estas tre modesta … Sed mi dezirus ekscii ion pri vi, pri via familio (…)”
> 
> Kial ŝi diras tion al mi? pensis Bazarov.
> 
> “Ĉio ĉi tute ne estas interesa”, diris li voĉe (…)”

En ĉi tiaj okazoj la rekta parolo restas tute nemarkita, por ne miksiĝi
kun la voĉa dialogo – kvankam en la aliaj lokoj ĝin markas citiloj.


<a id="org3af6513"></a>

### Aliaj signoj similaj

Krom jam indikitaj uzoj por prezenti la gramatikan apostrofon kaj la
unuoblajn citilojn, la Askia apostrofo povas aperi anstataŭ minutsigno
(`3'10"`, t.e. «3 minutoj 10 sekundoj», tipografie «3′10″»; la angula
minuto, ekz‑e `42°25'`, tipografie «42°25′»). En la «Universala
vortaro» la minutsigno disigas morfemojn: «ge′patr′o′j»; iuj legantoj
povas konfuzi tion kun apostrofo, precipe en senserifa tiparo; la nunaj
vortaristoj (ekz‑e en PIV) uzas tiufunkcie la oblikvon (ge/patr/o/j),
signon iom tro grandan; nacilingve vortaristoj ofte uzas tiusence
la mezaltan punkton, kio aspektas pli elegante: «ge‧patr‧o‧j».


<a id="org72ada1b"></a>

# Kodoj


<a id="org9ffc3ca"></a>

## Tajpiloj kaj Askio

Askio (difinita en la jaro 1963ª) disponigas la tipan signaron de tajpilo Usona.

La apostrofo ‹'› (27<sub>16</sub>) havas la simetrian formon de supra vertikala
streko, kaj krom la propran apostrofon prezentas ankaŭ la malferman
kaj la ferman unupecajn citilojn anglalingvajn.

Simile, la citilojn prezentas supra vertikala dustreko ‹"› (22<sub>16</sub>,
«lepororeloj»).

Tio aspektas akcepteble en egalpaŝa tajpaĵo (ĉar la du strekoj de
‹"› aperas sampaŝe, do pli dense ol la unustreka apostrofo):

> `Anstataŭ "la" oni povas ankaŭ diri "l'".`

sed tio aĉas en tipografia tiparo proporcia:

> Anstataŭ "la" oni povas ankaŭ diri "l'".

La estetika emo unuecigi la formojn (kiel en la angla tradicio pri la
apostrofo ‹’›, la citiloj unuoblaj ‘x’ kaj duoblaj “x”) kolizias kun
la legeblo, samkiel la konfuzo de I kaj l en la senserifaj tiparoj.


<a id="org382391a"></a>

## La 8-bitaj kodoj

Serio da normoj ISO-8859 (1985–2001) diversmaniere kompletigas Askion per
diakritoj uzataj en diversaj lingvoj naciaj. ISO-8859‑3 (alinome
Latina‑3ª) disponigas ĉiujn literojn Esperantajn, sed koncerne la
citilojn kaj apostrofojn ĉio restas samkiel en Askio.

La normo ISO-8859‑1 (alinome Latina-1ª), destinita por la lingvoj
okcidentaj, ja disponigas la paron da duoblaj angulaj citiloj «x» –
kaj neniajn citilojn komoformajn; en tio mi vidas implican rekomendon
pri uzindo de ĝuste tiaj citiloj, kiajn mi mem ĉi-supre prezentis kiel
la plej konvenaj por Esperanto.

Ekzistas tajpiloj (ekz‑e la [franckanada qwerty-tajpilo](https://en.wikipedia.org/wiki/QWERTY#French_(Canada))) kiuj elskatole
disponigas tiujn citilojn en sia klavaro.

Surbaze de la normoj ISO-8859, Majkrosofto kreis siajn «kodpaĝojn»
[CP-1252](https://en.wikipedia.org/wiki/Windows-1252), [CP-1250](https://en.wikipedia.org/wiki/Windows-1250) …, plenigante la kodpoziciojn 80<sub>16</sub>…9F<sub>16</sub> (kiujn
ISO-8859 rezervas por stirsignoj) je signoj videblaj, interalie la
paraj kurbaj citiloj (la anglaj “x” kaj ‘x’; la germanaj „x“ kaj ‚x‛),
la unuoblaj angulaj ‹x› (la duoblaj angulaj citiloj retenas sian lokon
laŭ la Latina-1ª). Estas malkohero en tio, ke dum ‹‚› (82<sub>16</sub>,
«malsupra unuobla 9‑citilo», grafike identa kun komo) ricevas apartan
signonumeron, la kurba apostrofo (grafike identa kun ‹’› = 92<sub>16</sub>, la
«supra unuobla komo-citilo»), apartan signon ne ricevas.

Unu el la normaj 8-bitaj kodoj, [ISO/IEC 8859‑7](https://en.wikipedia.org/wiki/ISO/IEC_8859‑7) (Latina/Greka)
disponigas la kurban apostrofon ĉe la signonumero A2<sub>16</sub> = 162<sub>10</sub>
(la Latina‑3ª havas tie la bovlon ‹˘›); en la normo ĝi estas difinita
per la Unikoda signonumero U+02BC.


<a id="orge60b253"></a>

## Unikodo

Nuntempe Unikodo estas la fakta normo por la tekstoj en Esperanto, kaj
ĝi disponigas pli ol sufiĉe da signoj por tio.

Interalie disponeblas ĉiuj supre menciitaj citiloj; disponeblas
speciala signo por la kurba apostrofo tipografia:

    ‹ʼ› U+02BC, modifier letter apostrophe

(Ĉu vi vidas apostrofon inter la angulaj citiloj? Pri ĝia disponeblo
en la tiparoj mi parolos [ĉi-sube](#org468d74e).)

Tamen ĝia prisktibo en la Unikoda Normo<sup><a id="fnr.9" class="footref" href="#fn.9" role="doc-backlink">9</a></sup> impresas iom strange:

> **Apostrofo litera.** U+02BC, «modifilo la apostrofo litera», estas
> preferinda tie, kie la apostrofo prezentas modifantan literon (ekz‑e
> por indiki glotan halton en transliteraĵoj). En tiu lasta okazo ĝi
> ankaŭ estas nomata *apostrofo litera.* &#x2013; P. 275 (traduko mia)

Konforme al la nomo «apostrofo litera», tiu signo havas en la
Unikoda datumbazo<sup><a id="fnr.10" class="footref" href="#fn.10" role="doc-backlink">10</a></sup> la sintaksan klason *litero* (Category: Letter). 
Tiu klasifiko rolas en determino de vortaj limoj ĉe la
tekstotraktiloj; ekz‑e se vi faros duoblan alklakon sur la litero ‹a›
en vorto ‹katʼ› (aŭ respektive ‹kato›) en la ĉi-sekva linio:

> katʼ estas kato (‹ʼ› = U+02BC)

la komputilo apartigos ĉiujn 4 signojn de la vorto ‹katʼ› (samkiel
respektive ĉiujn 4 signojn de la vorto ‹kato›) – kaj tio estas lingve
ĝusta konduto.

Sed la Unikoda normo plu diras jene:

> **Apostrofo interpunkcia.** U+2019, «la dekstra unuobla citilo», estas
> preferinda tie, kie la apostrofo prezentas signon interpunkcian, kiel
> ekz‑e en kuntiraĵoj: *We’ve been here before.* En tiu lasta okazo
> U+2019 ankaŭ estas nomata *apostrofo interpunkcia.* &#x2013; P. 275 (traduko mia)

Tio estas tre dubinda rekomendo. Ĝi evidente malkonvenas por
Esperanto, kie la apostrofo ĉiam estas parto de vorto, male ol kun la
apostrofo disiga:

> kat’ estas kato (‹’› = U+2019)

(la duobla alklako sur ‹kat’› apartigas nur la 3 literojn: ‹kat›).

Parte tiu rekomendo sencas [por la franca lingvo](#org8a54e4f); sed ne tiom por la angla:
en *isn’t* la apostrofo anstataŭas la mezan *o* el *not;* kaj al *we’ve*
triapersone ununombre respondas ne *he’ve*, sed *he’s*. Fakte tiu
rekomendo fontas ne el la lingva strukturo, sed el la neriparebla Vindoza
konfuzo kun la anglaj unuoblaj citiloj:

> Praktiko (*an implementation*) ne povas kalkuli je tio, ke la teksto
> de uzanto ĉiam konformas al la diferenco inter tiuj signoj. La teksto
> povas veni el diversaj fontoj, inklude ĵetojn (*mappings*) el aliaj
> signokodoj, kiuj ne distingas apostrofojn literajn disde la
> interpunkciaj aŭ la fermaj citiloj unuoblaj. En tia okazo, ili *ĉiuj*
> estu prezentataj per U+2019.

T.e. malgraŭ la aldono de la malambigua signo «apostrofo litera», oni
ĝin ignoru kaj plu konservu la konfuzon de la Vindoza CP-1252. Tiu
argumento malmulte sencas por la plimulto da lingvoj, kiuj ja
plejparte ne uzas la anglajn apostrofajn citilojn.

> Do, la semantiko de U+2019 dependas je kunteksto. Ekz‑e interlitere aŭ
> intercifere ĝi funkcias kiel enteksta signo interpunkcia kaj ne
> disigas vortojn aŭ liniojn. (For example, if surrounded by letters or
> digits on both sides, it behaves as an in-text punctuation character
> and does not separate words or lines.) &#x2013; P. 276.

Ĉi tiu konfuze vortumita alineo sugestas, kiel oni detektu la literan
signifon de la citilo: per la pozicio inter literoj. Iel-tiel tio
funkcias por la angla; sed ĝi plene fiaskas por Esperanto, kaj por
diversaj aliaj lingvoj, ekde la greka (kie unue aperis la signo kaj la
vorto ἀπόστροφος):

τα αδέλφια → τʼ αδέλφια  
που είσαι → που ʼσαι  
και εγώ → κιʼ εγώ

ĝis la itala:

> La donna è mobilʼ …  
> … e di pensierʼ!  

aŭ la suoma:
> Se aikʼ olʼ ajoistʼ ankarin &#x2013; (Kaarlo Kramsu: „Ilkka“).  
> (= «Tio estis la plej malfacila tempo el ĉiuj»)

Tipografie en multaj tiparoj tiuj du apostrofoj aspektas egale (havas
unu saman signobildon); tiel estas ekz‑e en *Times New Roman,
FreeSerif, DejaVu, Noto*. En aliaj tiparoj la litera apostrofo estas
iomete malsama (ekz‑e malpli alta kaj malpli granda); tiel estas en
*Liberation, Gentium, Ubuntu*). Jen komparu ilin en via tiparo (kiaj
ilin prezentas via legilo): ’ ʼ. Mi ne scias, ĉu ekzistas iuj
tradiciaj trajtoj por diferencigi tiujn du signojn, kaj mi dubas, ĉu
utilas kontrastigi ilin en tipografio (tiom malpli, ke en Esperanto mi
opinias la apostrofajn citilojn neuzindaj); sed mi certas pri la
dezirindo vidigi la diferencon en «programista» tiparo (kaj mi vidigis
ĝin en mia [malambiguiga tiparo](https://github.com/pok49/fixed-9x18) egalpaŝa, kiun mi kutime uzas en mia
laboro).

<a id="org468d74e"></a>
<a id="orgd4a624e"></a>

## WGL4

Krom la dubindaj (kaj por Esperanto nevalidaj) argumentoj, prezentitaj
en la ĵus citita misrekomendo<sup><a id="fnr.11" class="footref" href="#fn.11" role="doc-backlink">11</a></sup>, ekzistas ankoraŭ unu konsidero,
praktike pli grava, kiun tamen la Unikoda dokumento ne citas (probable
ĉar la argumento estas iom hontinda por la grava instanco): la
Majkrosofta normo [WGL4](https://eo.wikipedia.org/wiki/WGL4) (vu-go-lo kvar), kiu pretendis (ĉu plu
pretendas?) esti «la Askio de la 21ª jarcento»<sup><a id="fnr.12" class="footref" href="#fn.12" role="doc-backlink">12</a></sup>. Multaj tiparoj
Majkrosoftaj disponigas la tutan, sed ankaŭ *ne pli ol la tutan*
signaron de WGL4. Nu, samkiel la Majkrosofta CP-1252, WGL4 disponigas
la citilon U+2019, sed ne la apostrofon U+02BC. Tial, se oni volas
disponigi oniajn tekstojn por kiel eble plej vasta publiko, oni oferu
la logikon al la monopolo.

Tamen tiu argumento ne estas tiom forta, kiel ĝi ŝajnas:

Unue, la tiparoj iĝas ĉiam pli riĉaj, kaj kun la paso de tempo tiu
argumento ĉiam malpli aktualas. Averaĝe miaj tiparoj Linuksaj (mi ja
uzas Linukson) estas pli riĉaj ol WGL4, kaj ili disponigas la
apostrofon literan. Ekz‑e la [Liberation](https://en.wikipedia.org/wiki/Liberation_fonts)-familio (defaŭlta en
[LibreOffice](https://eo.wikipedia.org/wiki/LibreOffice)), [DejaVu](https://en.wikipedia.org/wiki/DejaVu_fonts) k.m.a.<sup><a id="fnr.13" class="footref" href="#fn.13" role="doc-backlink">13</a></sup>

Due, ĉe vidigo de teksto per tiparo manka je tia apostrofo, deca
aplikaĵo ŝtopas la truon per signo el konvena [victiparo](https://www.reta-vortaro.de/revo/art/tip.html#tip.vic0aro). Supozeble la
leganto mem povas sperti tion per sia foliumilo, kiu espereble iel
surekranigas la literan apostrofon ‹ʼ›. Mi tamen koncedas, ke la
victipara apostrofo iam ne tute harmonie akordas kun la elektita
ĉeftiparo ☹

Mi kontrolis disponeblon de la litera apostrofo U+02BC en la plej
gravaj tiparoj de *Windows7* kaj *Linux Mint* :

-   **La literan apostrofon havas:**
    -   Vindoze:
        -   Times New Roman, Arial, Courier New;
        -   Cambria, Calibri, Lucida Sans Unicode, Microsoft Sans Serif&#x2026;
        -   Consolas&#x2026;
    -   Linukse (tutaj tiparaj familioj):
        -   Liberation, DejaVu, Ubuntu, Noto, Free, Roboto Slab&#x2026;
-   **La literan apostrofon malhavas:**
    -   Vindoze:
        -   Georgia, Verdana, Gabriola, Constantia, Trebuchet MS, Comic Sans MS;
        -   Lucida Sans Console &#x2026;
    -   Linukse:
        -   Nimbus, C059 (≈ New Century Schoolbook), URW Bookman, Z003
            (≈ Zapf Chancery), P052 (≈ Palatino)&#x2026;

Resume, mi ankoraŭ hezitas. Tial mi ebligis al la uzuloj laŭplaĉe
elekti la signon en la [Emaksa interfaco](#org2451701).

<a id="org23ad7e9"></a>


<a id="org65e69d9"></a>

## Vikipedio

Mallogite de la Unikoda konfuzo oni eble pripensos revenon al la
senartifika Askia apostrofo. Ĝi certe estas vaste uzata (kaj eĉ
preferata) en neformala komunikado (ekz‑e en retpoŝto); kaj ĝia
simetria rekta formo eĉ estas pli logika por tia nepara signo,
kontraste al la paraj citiloj kurbaj: ‘x’. Kaj ĝi estas tre oportune
klavebla.

Tiu oportuno, kaj la havaja etimo de la komenca parto de la vorto
*Vikipedio*, povas pensigi, ke la rekta apostrofo estas la konvena
apostrofo por Vikipedio. Sed ne estas tiom simple.

Ĝuste pro la facileco enigi la askian apostrofon, en Vikipedio opoj da
apostrofoj estas uzataj por indiki tiparajn fasonojn:
''*kursivo*'', '''**graseto**''', ''''***graseta kursivo***''''.
En Esperanto tia konvencio kolizias kun la litera funkcio de
apostrofo, kiam oni redaktas Vikipedian artikolon helpate de
literumilo – ekz‑e la artikolon «[Majusklo](https://eo.wikipedia.org/wiki/Majusklo)», kies fontteksto komenciĝas
jene:

    '''Majusklo''' (aŭ '''grandlitero''' aŭ
    '''ĉeflitero''') estas unu el du formoj,
    kiujn povas havi ĉiu litero ...

kaj tio kaŭzas ĝenajn plendojn pri la neekzistantaj vortoj
<code>'''Majusklo'''</code>, <code>'''grandlitero'''</code>,
<code>'''ĉeflitero'''</code>
(la literumilaj vortaroj angla kaj franca agnoskas vortajn apostrofojn
nur interlitere, tial – malsame ol por Esperanto – la ĉirkaŭa markado
per apostrofoj ne kaŭzas problemojn por tiuj lingvoj).

La solvo por Esperanto estas prezenti la vortan apostrofon per alia
signo ol la Askia apostrofo; ankaŭ la fajna tipografio postulas ke la
vortaj apostrofoj estu kurbaj.


<a id="orgbf777cd"></a>

# Komparo de literumiloj


<a id="org0b15f28"></a>

## Ispell

Ĉi tiu studaĵo fontas el mia laboro pri vortaro por Ispelo, t.e. por
la literumilo *Ispell*, la plej malnova (unue aperinta en la jaro
1971ª) el la ankoraŭ uzataj. Samkiel la aliaj literumiloj, Ispelo
ebligas atribui al signoj interliteraj (kiaj la streketo ‘-’ kaj la
Askia apostrofo) la statuson vorteran; tio konvenas por la streketo,
sed maltaŭgas por la apostrofo Esperanta. Nu, malsimile ol multaj
aliaj literumiloj, Ispelo permesas klasi la apostrofon kun la literoj,
kio ebligas uzi ĝin ajnloke en vorto, do ankaŭ vortofine. Ĵus ni
vidis, ke tio tamen ĝenas en la laboroj Vikipediaj.

Ispelo ebligas difini plurajn tekstoprezentojn uzeblajn kun unu sama
vortaro kaj facile komuteblajn – kiaj ekz‑e la Teĥa `^cirka^u`-skribo,
la iksisma `cxirkaux`-surogato, la prezento per la Latina‑3ª… En tiuj
prezentoj la apostrofo aperas Askie, do konfuze. Tial mi aldonis
kroman prezenton `epo` (la norma 3-litera siglo por *Esperanto* en
ISO 639). Por Ispelo ĝi indikas la tekstoprezenton en kiu la rolon de
apostrofo ludas la paŝiga dekstra korno ‹´› (B4<sub>16</sub>, *spacing acute*),
signo en la uzulaj tekstoj senutila, kiu tamen liberigas la Askian
apostrofon el la rolo de vortero (tio utilas por la [laboroj Vikipediaj](#org23ad7e9));
kaj al [la Emaksa interfaco](#org2451701) ĝi ebligas trakti la kurbajn
apostrofojn, kiel priskribite en la tujsekva subsekcio.

<a id="org2451701"></a>


<a id="orgb5ab6c6"></a>

### La Emaksa interfaco

Praktike mi uzas Ispelon tra [Emakso](https://eo.wikipedia.org/wiki/Emacs), redaktante tekstojn Unikodajn. La
Emaksa interfaco `ispell.el` travideble transkodas inter la Unikoda
prezento de la redaktata teksto kaj la Ispela (aŭ Aspela, aŭ Hunspela)
fasado en la Latina‑3ª. La sola problemo estas pri kurba apostrofo,
kiun la Latina‑3ª malhavas; por solvi tion mi verkis kromaĵon
`ispell-ini.el` por la Emaksa interfaco, kiu kromaĵo apartigas la
vortojn kun kurba apostrofo, transkodas ilin en la prezenton laŭ la
Latina‑3ª, kaj poste rekodas la unubajtajn apostrofojn de la Ispela
respondo en la formon Unikodan. Tion egale bone eblas programi por
ajna apostrofo Unikoda, ĉu U+02BC, ĉu U+2019; la varianton regas la
variablo `ispell-apostrophe` en `ispell-ini.el`. Defaŭlte ĝi ricevas
la valoron citilan (U+2019), sed la funkcio `ispell-set-apostrophe`
ebligas baskule ĝin ŝanĝi al la apostrofo litera (U+02BC) aŭ reen. La
funkcion eblas voki dialoge:

    M-x ispell-set-apostrophe

aŭ el programo:

    (ispell-set-apostrophe)

La kurantan valoron de la variablo eblas ekzameni per

    C-h v RET ispell-apostrophe

Tiu variablo kaj ĝia valoro influas nur la reĝimon (la «vortaron»,
fakte la interfacon) `epo`; en la aliaj reĝimoj (ekz‑e `eo`) ili
neniel efikas, kaj la apostrofoj restas Askiaj.


<a id="orgab9cb9a"></a>

## GNU Aspell

Aspelo estis kreita ĉ. ja jaro 1998ª kiel sukcedanto de Ispelo
(almenaŭ en la Linuksa mondo). Ĝi entenas diversajn rimedojn por
plibonigi ĝian funkciadon ĉe la eklektaj okcidentaj ortografioj (‹ph›
= [f] = ‹f›; ‹ch› = [k] = ‹c› = ‹k› ktp). Por la lingvoj kun fonetika
skribo tio estas senbezona; tamen tio utilas pri skanadaj eraroj
ŝuldataj al la grafikaj konfuzoj de la latinlitera skribo: ‹rn› = ‹m›,
‹l› = ‹I› ktp.

Interne Aspelo funkcias per unubajta signokodo, sed ĝi ebligas kolekti
en tia signokodo subaron de Unikodo, kaj aŭtomate transkodas inter tiu
unubajta kodo interna kaj Unikodo; tial por Esperanto mi difinis la signaron
`Latin‑3a` (`Latin‑3` plus la litera apostrofo: U+02BC → 92<sub>16</sub>, la
pozicio de ‹’› en CP-1252). Krome, el ĉiuj literumiloj Aspelo ebligas
plej bone difini la permesatajn poziciojn de kromvorteroj, ekz‑e por
Esperanto:

    special ʼ --*   - -*-

(t.e. la apostrofo aperu finvorte; la streketo, mezvorte).

Eblas kombini plurajn vortarojn (ankaŭ tiujn por diversaj lingvoj) dum
unu literumada seanco. Tamen, krom se la teksto estas dismarkita per
lingvoindikoj, komprenataj de la literumilo, tio estas danĝera rimedo;
ekz‑e esperantisto eble preteratentos misuzon de fremda vorto en la
rolo de vorto Esperanta. (Oni tamen povas sekure kombini lingvojn
malsamalfabetajn, ekz‑e la bulgaran kaj Esperanton, ĉar en tia okazo
la alfabetoj mem provizas klaran dismarkadon.)


<a id="orgb47b992"></a>

## Hunspell

Hunspelo nun estas la plej grava kaj populara literumilo. Ĝi prezentas
plurajn avantaĝajn trajtojn, kiuj paradokse iam sin montras malavantaĝaj.

**Unue**, Hunspelo kapablas uzi Unikodon interne (kvankam malpli fidinde
ol Aspelo; ekz‑e mi stumblis kontraŭ la malnova kaj ankoraŭ ne
korektita [eraro](https://sourceforge.net/p/hunspell/bugs/11/)). Sekve de tiu kapablo la morfologian rolon de la
apostrofoj Hunspell interpretas laŭ ilia klasifiko Unikoda. Tial mi ne
sukcesis atribui al la citila apostrofo U+2019 la statuson de
vortofina vortero; tio eblas nur por la apostrofo litera U+02BC, kaj
ĝuste tiel estas farite en la Esperanta Hunspela vortaro distribuata
kun *LibreOffice;* fakte, tio estas grava argumento por akcepti la
literan apostrofon ankaŭ por la aliaj literumiloj, eĉ se ili kapablas
laŭi la misrekomendon de la Unikoda normo. (Oni povus rigardi tion
avantaĝo: Hunspelo toleras nur la principe pravajn solvojn; tamen
fakte ĝi kompromisas pri la principoj, ebligante la interliterajn
apostrofojn citilajn laŭ la kutimo Majkrosofta; cetere, la kompromiso
rekomendata de la Unikoda normo, sed maltaŭga por Esperanto.)

**Due**, dankʼ al sia hungara deveno Hunspelo ebligas tre koncize kaj
trafe priskribi la gramatikon de la Esperanta vortfarado. Ispelo ne
estas tiom saĝa, kaj mi devis registri la oftajn kunmetaĵojn kiel
apartajn vortojn. Sed jen tajpante ĉi tiun artikolon mi mistajpis:
«vortolumoj» anstataŭ «vortolimoj» — ja klavoj `U` kaj `I` najbaras
sur mia QWERTY-klavaro (pli ĝuste, sur mia ŜŬERTĜ-klavaro). Ispelo
detektis la eraron; Hunspelo akceptis la vorton, ja ĝi estas same
regula, kiel la angla *word lights* (kiun la anglaj literumiloj
volonte akceptas). Mi koncedas, ke mia Ispela eo-vortaro prezentas
precipe mian idiolekton; sed ankaŭ aliaj uzantoj povus kompletigi ĝin
en sia komputilo, kaj ĝi estos pli diligenta ol Hunspelo kaj ankoraŭ
pli ol averaĝa vortaro por la angla lingvo.

**Trie**, Hunspelo entenas tre riĉan kolekton da lingvopriskribaj
rimedoj, ekz‑e tre utilas la markoj `NOSUGGEST` kaj `SUBSTANDARD`,
kiuj ebligas silente akcepti, sed ne proponi inter la korektoj,
vortojn obscenajn aŭ malbonstilajn. En Ispelo kaj Aspelo eblas nur
forigi aŭ inkludi tiajn vortojn en la vortaron dum ĝia instalo.


<a id="org6359cdc"></a>

## Vim

La grava Uniksa tekstoredaktilo [Vimo](https://eo.wikipedia.org/wiki/Vim_(programo)) jam havas interfacan kromaĵon
`vimspell` por interagi kun Ispelo kaj Aspelo; tamen la novaj
versioj de Vimo rekomendas uzi enkonstruitan literumilon, kiu
multrilate similas Hunspelon. Interalie, samkiel Hunspelo ĝi rifuzas
trakti finvortajn apostrofojn (ĉu Askiajn, ĉu citilajn); tial en mia
konvertaĵo mi adoptis la literan apostrofon U+02BC.


<a id="orgee45095"></a>

# Konkludo

Sen trudi miajn preferojn al iu ajn, mi jene konkludas pri la racia
prezento de tekstoj Esperantaj:

-   Manskribe mi uzas la germanajn citilojn 99–66 kaj la kurban apostrofon
    komoforman: *„manskribʼ“*.
-   Tajpile mi uzas la rektajn citilojn kaj la rektan apostrofon:<code> "tajpaĵ'"</code>.
-   Retpoŝte mi uzas la angulajn citilojn (la plej klarajn) kaj la rektan
    apostrofon (komprenatan de la literumilo): «retpoŝt'».
-   Tipografie mi uzas la angulajn citilojn kaj la kurban apostrofon
    literan (U+02BC): «tipografiʼ», se mi certas ke ĝi disponeblas en la
    uzota tiparo.
-   Okaze de ingitaj citaĵoj mi uzas la angulajn citilojn ekstere kaj la
    kurbajn interne: «Li diris: „Mi venos!“».
-   Estkiel «malpezajn» citilojn mi uzas la unuoblajn citilojn angulajn
    (la apostrofo rekta ‹'›, la artikolo ‹lʼ›, la subsigno ‹¸›).

Koncerne la literumilojn, la kombino Ispelo + Emakso estas por mi la
plej oportuna. Ĝi estas la plej diversflanka kaj ebligas egale facile
redakti kaj tekstojn tajpecajn (ekz‑e retpoŝtajn), kaj la
tipografiajn.


# Piednotoj

<sup><a id="fn.1" href="#fnr.1">1</a></sup> <span lang="fr">Pythoud, Christophe. Français-GUTenberg : un nouveau dictionnaire français pour ISPELL.
Problèmes résolus et intégration de contributions extérieures.
[Cahiers GUTenberg, № 28-29 (1998), pp. 252–275](http://www.numdam.org/item/CG_1998___28-29_252_0.pdf).</span>

<sup><a id="fn.2" href="#fnr.2">2</a></sup> Peeraerts, Paul. [Pri „esperantlingvaj” kaj aliaj citiloj](http://www.ipernity.com/blog/paul_peeraerts/4617856). Ipernity, 2016-06-05.

<sup><a id="fn.3" href="#fnr.3">3</a></sup> “Single guillemets may be used for quotes inside quotes.” 
Unicode® Standard 15.1.0 (2023 Sept. 12). [Chapter 6](https://www.unicode.org/versions/Unicode15.0.0/ch06.pdf), p. 272.

<sup><a id="fn.4" href="#fnr.4">4</a></sup> Wennergren, Bertilo. [Bazformoj de radikoj en vortaroj](http://interlingvistiko.net/wp-content/uploads/2021/05/2-Wennergren.-Bazformoj-de-radikoj-en-vortaroj.pdf).
Esperantologio / Esperanto Studies, **4** (2009), p. 17.

<sup><a id="fn.5" href="#fnr.5">5</a></sup> Turgenev I.S., tradukis Kabe. [Patroj kaj filoj](https://books.google.ru/books?id=sJstAQAAMAAJ). Librejo
«Esperanto», Moskvo, 1909. Ĉap. 17ª, p. 77.

<sup><a id="fn.6" href="#fnr.6">6</a></sup> Johán Valano: [Tien](https://legacy.esperanto.org.uk/eldonoj/piron/tekstoj/Tien.html). Vieno: IEM, 1997.

<sup><a id="fn.7" href="#fnr.7">7</a></sup> Dickens, Charles trad. Zamenhof, L. La batalo de lʼ vivo.
«La Esperantisto», vol. 2 (1891, feb.–jul. kaj sep.–nov.).

<sup><a id="fn.8" href="#fnr.8">8</a></sup> I. Turgenjev, tradukis Kabe. Patroj kaj filoj. Inko Tyresö, 2001.

<sup><a id="fn.9" href="#fnr.9">9</a></sup> Unicode® Standard 15.1.0 (2023 Sept. 12). [Chapter 6](https://www.unicode.org/versions/Unicode15.0.0/ch06.pdf).

<sup><a id="fn.10" href="#fnr.10">10</a></sup> Unicode Data [UDC.txt](https://www.unicode.org/Public/UCD/latest/ucd/UnicodeData.txt).

<sup><a id="fn.11" href="#fnr.11">11</a></sup> Pri ĝia nevalido eĉ por la angla lingvo vidu la blogaĵon
“[Which Unicode character should represent the English apostrophe? (And why the Unicode committee is very wrong)](https://tedclancy.wordpress.com/2015/06/03/which-unicode-character-should-represent-the-english-apostrophe-and-why-the-unicode-committee-is-very-wrong)” kaj la postan diskuton tie.

<sup><a id="fn.12" href="#fnr.12">12</a></sup> Similcele ISO rekomendas 2 [Multlingvajn Eŭropajn Subarojn](https://en.wikipedia.org/wiki/Unicode#Standardized_subsets)
(MES) de Unikodo: [MES-1](https://www.cl.cam.ac.uk/~mgk25/ucs/mes-1-rationale.html) (por la latinaflabetaj skribsistemoj, 335
signoj) kaj MES-2 (por la alfabetoj latinaj, greka, cirilaj, 1062
signoj). Ambaŭ entenas kaj la literan apostrofon U+02BC, kaj la
citilon U+2019. (WGL4 situas meze: 657 signoj, kvankam ne ĉiujn
signifojn de MES-1 ĝi disponigas.)

<sup><a id="fn.13" href="#fnr.13">13</a></sup> Ekzamenante la tiparojn mi rimarkis, ke la kutima testfrazo
pri la signoj speciale Esperantaj estas nekompleta, kaj mi jene ĝin
ŝanĝis: `Eĥoŝanĝʼ ĉiuĵaŭde` (por testi ankaŭ la literan apostrofon).
