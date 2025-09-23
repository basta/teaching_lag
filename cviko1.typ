#import "/book.typ": book-page

#show: book-page.with(title: "Cvičení 1")

// Preamble for the document
// #set document(author: "LAG Cvika", title: "Příprava na cvičení LAG 1")
// #set text(font: "Linux Libertine", lang: "cs")

= Definice tělesa a řešení lineární rovnice

== Téma 1: Co je to těleso?

*Cíl:* Formálně a přitom srozumitelně zavést nejdůležitější algebraickou strukturu, se kterou budeme v tomto kurzu pracovat.

*Postup na Tabuli:*

1.  *Intuitivní úvod:* "V matematice rádi zkoumáme různé 'světy' čísel. Některé z nich jsou velmi 'pěkné' – můžeme v nich bez problémů sčítat, odčítat, násobit a dělit (kromě nuly). Takovýmto ideálním světům říkáme *tělesa*. Jsou to naše hlavní hřiště pro lineární algebru."

2.  *Formální definice:* Těleso je množina $T$ (s alespoň dvěma prvky $0$ a $1$) a dvěma operacemi ($+$ a $dot.c$), které musí splňovat následující pravidla (axiomy):

    *Axiomy pro sčítání (+):*
    + *Asociativita:* $(a+b)+c = a+(b+c)$
    + *Komutativita:* $a+b = b+a$
    + *Neutrální prvek (nula):* Existuje $0 in T$ tak, že $a+0=a$.
    + *Inverzní prvek (opačné číslo):* Ke každému $a in T$ existuje $-a in T$ tak, že $a+(-a)=0$.

    *Axiomy pro násobení ($dot.c$):*
    + *Asociativita:* $(a dot b) dot c = a dot (b dot c)$
    + *Komutativita:* $a dot b = b dot a$
    + *Neutrální prvek (jednička):* Existuje $1 in T$ tak, že $a dot 1 = a$.
    + *Inverzní prvek (převrácená hodnota):* Ke každému $a in T$, kde $a != 0$, existuje $a^(-1) in T$ tak, že $a dot a^(-1) = 1$.

    *Propojení operací:*
    + *Distributivita:* $a dot (b+c) = a dot b + a dot c$

== Problém 1 – Aplikace axiomů tělesa

*Zadání:* Pomocí právě zavedených axiomů tělesa vyřešte rovnici $2x+4=7$ nad $RR$. Ukažte, proč stejný postup funguje v $QQ$, ale selže v $ZZ$.

*Postup Řešení na Tabuli:*
+ *Rovnice:* $2x + 4 = 7$.
+ K oběma stranám přičteme *aditivní inverzní prvek* ke 4, což je $-4$:
  $[ (2x + 4) + (-4) = 7 + (-4) ]$
  _Komentář:_ Všimněte si, že nepíšeme $7-4$. V algebře se snažíme pracovat jen se základními operacemi. Operace "odčítání" je jen zkratka pro "přičtení inverzního prvku".
+ Po úpravě: $2x = 3$.
+ Obě strany vynásobíme *multiplikativním inverzním prvkem* ke 2, $2^(-1)$. "Dělení" je jen zkratka pro "násobení inverzním prvkem".
  $[ 2^(-1) dot (2x) = 2^(-1) dot 3 ==> x = 3/2 ]$
+ *Diskuze:*
  - *Proč to funguje v $QQ$?* Protože $QQ$ je těleso.
  - *Proč to selže v $ZZ$?* Protože $ZZ$ *není těleso* – nesplňuje axiom o existenci multiplikativní inverse (prvek $2^(-1)$ není v $ZZ$).


== Problém 2 – Svět hodin: Těleso $ZZ_5$ vs. netěleso $ZZ_6$ (Problém 1.1.8)

*Zadání:* Představte modulární aritmetiku. Poté porovnejte násobení v $ZZ_5$ a $ZZ_6$. Proč $ZZ_6$ "nepřipomíná" reálná čísla? Nakonec vyřešte rovnici $2x+4=3$ v $ZZ_5$.

*Postup Řešení na Tabuli:*
+ *Úvod do $ZZ_n$:* Vysvětli modulární aritmetiku na analogii s ciferníkem hodin.  Formálně je to počítání se zbytky po dělení číslem $n$.
+ *Analýza $ZZ_6$:* Sestav tabulku násobení. Ukaž na klíčový problém: $2 dot 3 = 0$. Těmto prvkům říkáme *dělitelé nuly*. Prvky $2, 3, 4$ nemají multiplikativní inverzi. $ZZ_6$ tedy *není těleso*.
+ *Analýza $ZZ_5$:* Ukaž, že zde dělitelé nuly nejsou a každý nenulový prvek inverzi má. $ZZ_5$ *je těleso*.
+ *Řešení rovnice $2x+4=3$ v $ZZ_5$:*
  - Přičtení aditivní inverse ke 4 (což je 1 v $ZZ_5$):
    $[ (2x+4) + 1 = 3+1 ==> 2x=4 ]$
  - Násobení multiplikativní inversí ke 2. V $ZZ_5$ platí $2 dot 3 = 1$, takže $2^(-1)=3$.
    $[ 3 dot (2x) = 3 dot 4 ==> 1 dot x = 12 ==> x = 2 ]$


== Problém 3 – Další vlastnosti a výpočty v tělesech $ZZ_p$

*(A) Problém 1.1.7 – "Freshman's dream"*
*Zadání:* Ukažte, že pro všechna $a, b in ZZ_3$ platí rovnost $(a+b)^3=a^3+b^3$.
*Postup:* Použij binomickou větu.
  $[ (a+b)^3 = binom(3,0)a^3 + binom(3,1)a^2b + binom(3,2)a b^2 + binom(3,3)b^3 ]$
  V $ZZ_3$ jsou koeficienty $binom(3,1)=3$ a $binom(3,2)=3$ rovny nule, takže smíšené členy zmizí.

*(B) Problém 1.1.9 – Algoritmické hledání inverse*
*Zadání:* Nalezněte $12^(-1)$ v $ZZ_(17)$.
*Postup:* Ukaž systematický postup pomocí opakovaného dělení se zbytkem (Euklidův algoritmus) a zpětného dosazování, jak je popsáno ve sbírce.
  + $17 = 1 dot 12 + 5 ==> 5 equiv -12 \pmod(17)$
  + $17 = 3 dot 5 + 2 ==> 2 equiv -3 dot 5 \pmod(17)$
  + $17 = 8 dot 2 + 1 ==> 1 equiv -8 dot 2 \pmod(17) ==> 2^(-1) equiv -8 equiv 9 \pmod(17)$
  + Zpětné dosazení:
    - $5^(-1) equiv -3 dot (2^(-1)) equiv -3 dot 9 = -27 equiv 7 \pmod(17)$
    - $12^(-1) equiv -5^(-1) equiv -7 equiv 10 \pmod(17)$
  + Zkouška: $12 dot 10 = 120 = 7 dot 17 + 1 equiv 1 \pmod(17)$.


== Problém 4 – Geometrická ochutnávka #text(stroke: red)[ Stihli jsme pouze na cviku od 12:30]

*Zadání:* V "rovině" nad tělesem $ZZ_3$ najděte a zakreslete všechny body ležící na přímce $y = x+1$.

*Cíl:* Ukázat, že geometrické myšlenky můžeme aplikovat i na konečné světy čísel a připravit půdu pro budoucí propojování algebry a geometrie.

*Postup Řešení na Tabuli:*
+ Nejdříve si definujeme naši "rovinu". Je to množina všech uspořádaných dvojic $(x, y)$, kde souřadnice $x$ i $y$ jsou prvky z tělesa $ZZ_3 = \{0, 1, 2\}$. Celkem má tato rovina $3 dot 3 = 9$ bodů.
+ Hledáme všechny body $(x, y)$, které splňují rovnici $y = x+1$. Postupně dosadíme za $x$ všechny možné hodnoty z $ZZ_3$ a spočítáme $y$ (všechny výpočty jsou v $ZZ_3$):
  - Pro $x=0$: $y = 0+1 = 1$. Získáme bod *(0, 1)*.
  - Pro $x=1$: $y = 1+1 = 2$. Získáme bod *(1, 2)*.
  - Pro $x=2$: $y = 2+1 = 3 equiv 0 \pmod 3$. Získáme bod *(2, 0)*.
+ *Závěr:* Přímka $y=x+1$ je v tomto světě tvořena přesně třemi body: $\{(0, 1), (1, 2), (2, 0)\}$.




== Shrnutí a Závěr
Dnes jsme si definovali, co je to *těleso*. Je to struktura, kde platí určitá sada pravidel, která zaručují, že v ní můžeme spolehlivě řešit lineární rovnice. Viděli jsme, že $RR$ a $ZZ_5$ jsou tělesa, ale $ZZ$ a $ZZ_6$ ne. Právě v tělesech se bude odehrávat většina lineární algebry. Celý semestr budeme řešit *lineární problémy*, což jsou zobecnění rovnice, kterou jsme řešili dnes, do mnoha proměnných.