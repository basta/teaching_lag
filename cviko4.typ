#import "/book.typ": book-page

#show: book-page.with(title: "Cvičení 3")

// Základní nastavení dokumentu

// Definice pro vektory pro snazší psaní
#let bvec() = $arrow(b)$
#let evec() = $arrow(e)$
#let vvec() = $arrow(v)$
#let span = "span"

= Příprava na cvičení: Báze a dimenze lineárního prostoru

= Cíle Cvičení:
- Studenti by měli pochopit, co je to báze a dimenze, a umět tyto pojmy prakticky použít.
- Měli by se naučit, jak znalost dimenze dramaticky zjednodušuje ověřování, zda je daný seznam vektorů bází.
- Studenti by měli být schopni aplikovat větu o dimenzi spojení a průniku jak na konkrétních, tak na abstraktních příkladech.
- Měli by porozumět důsledkům věty o dimenzi, například jak zaručuje existenci netriviálního průniku podprostorů.

= Problém 4.2.1 – Ověřování báze v $RR^3$

== Zadání:
O následujících seznamech rozhodněte, zda jsou uspořádanými bázemi lineárního prostoru $RR^3$ nad $RR$. Smíte využít faktu, že $dim(RR^3) = 3$.
1. Seznam $B_1 = (vec(1, 2, 3), vec(1, 3, 2), vec(1, 0, 0))$.
2. Seznam $B_2 = (vec(1, 0, 0), vec(148, 3, 2))$.
3. Seznam $B_3 = (vec(1, 4, 3), vec(1, 0, 0), vec(4, 8, 6))$.

== Klíčové Koncepty:
Báze, dimenze, lineární nezávislost, lineární obal (množina generátorů), kanonická báze.

== Cíl Problému:
Ukázat studentům, jak znalost dimenze prostoru radikálně zjednodušuje ověření, zda je daný seznam vektorů bází. Porovnat výpočetně náročný postup s elegantnějším teoretickým přístupem.

== Postup Řešení na Tabuli:

1.  *Úvodní otázka:* "Co víme o prostoru $RR^3$? Jaká je jeho dimenze a proč?"
    - Očekávaná odpověď: $dim(RR^3)=3$. Důvod: kanonická báze $K_3 = (evec_1, evec_2, evec_3)$ má 3 prvky.
    - *Ponaučení:* Jakákoli jiná báze prostoru $RR^3$ musí mít také přesně 3 prvky.

2.  *Řešení části (2): Seznam $B_2$*
    - Seznam $B_2$ má pouze 2 vektory, ale $dim(RR^3)=3$.
    - *Závěr:* $B_2$ není bází $RR^3$.

3.  *Řešení části (1): Seznam $B_1$*
    - Seznam má 3 vektory, což je správný počet. Stačí ověřit lineární nezávislost.
    - *Porovnání metod:*
        - *Generování:* Vede na soustavu s parametry na pravé straně. Náročné.
        - *Lineární nezávislost:* Vede na homogenní soustavu bez parametrů. Jednodušší.
    - *Výpočet lineární nezávislosti (standardní):*
      $
      vec(
        a_1 + a_2 + a_3 &= 0,
        2a_1 + 3a_2 &= 0,
        3a_1 + 2a_2 &= 0,
      )
      $
      Z posledních dvou rovnic plyne $a_1=0$ a $a_2=0$. Dosazením do první dostaneme $a_3=0$. Řešení je pouze triviální, vektory jsou LN.
    - *Výpočet lineární nezávislost (elegantní):*
        - Jsou $vvec_1 = vec(1,2,3)$ a $vvec_2 = vec(1,3,2)$ lineárně nezávislé? Ano, nejsou násobky.
        - Leží $vvec_3 = vec(1,0,0)$ v jejich obalu? Tj. $vec(1, 0, 0) = alpha vec(1, 2, 3) + beta vec(1, 3, 2)$?
        - Z rovnic $0 = 2alpha + 3beta$ a $0 = 3alpha + 2beta$ plyne $alpha=0, beta=0$. Dosazením do první rovnice souřadnic $1 = alpha + beta$ dostáváme $1=0$, což je spor.
        - Vektor $vvec_3$ neleží ve $span(vvec_1, vvec_2)$.
    - *Konečný Závěr:* $B_1$ je seznam 3 LN vektorů v prostoru dimenze 3, je to tedy báze.

== Poznámky pro Vyučujícího:
- Zdůrazněte, že ověření počtu prvků seznamu je první a nejrychlejší krok.
- Ukažte, že teoretická znalost (věta o dimenzi) šetří polovinu práce. Heslo: "Buďme chytře líní."

= Problém 4.2.2 – Transformace báze

== Zadání:
Ať $(bvec_1, bvec_2, ... , bvec_n)$ je uspořádaná báze lineárního prostoru $L$ nad $FF$. Rozhodněte, pro která $n >= 2$ je seznam $B' = (bvec_1 + bvec_2, bvec_2 + bvec_3,..., bvec_n-1 + bvec_n, bvec_n + bvec_1)$ opět bází prostoru $L$.

== Postup Řešení na Tabuli:
1.  *Analýza problému:* Máme $n$ vektorů v prostoru dimenze $n$. Stačí ověřit LN.
    $a_1(bvec_1 + bvec_2) + a_2(bvec_2 + bvec_3) + .. + a_n(bvec_n + bvec_1) = vec(0)$.
    Přeskupením: $(a_n + a_1)bvec_1 + (a_1 + a_2)bvec_2 + .. + (a_(n-1) + a_n)bvec_n = vec(0)$.
    Z LN původní báze dostáváme soustavu:
    $
    vec(
      a_1 + a_2 = 0 \
      a_2 + a_3 = 0 \
      .. \
      a_n + a_1 = 0
    )
    $

2.  *Zobecnění:* Z řetězce rovnic plyne $a_k = (-1)^(k-1)a_1$. Dosazením do poslední rovnice $a_n + a_1 = 0$ dostaneme $(-1)^(n-1)a_1 + a_1 = 0$.

3.  *Závěr:*
    - *n liché:* $n-1$ je sudé. Rovnice je $a_1+a_1=2a_1=0$. Nad $RR$ je řešení jen $a_1=0$, tedy všechny $a_k=0$. Vektory jsou LN. *$B'$ je báze.*
    - *n sudé:* $n-1$ je liché. Rovnice je $-a_1+a_1=0$, což platí vždy. Můžeme zvolit $a_1=1$ a najít netriviální řešení. Vektory jsou LZ. *$B'$ není báze.*

= Problém 4.2.4 a 4.3.1 – Věta o dimenzi spojení a průniku

== Zadání (A):
$V, W$ jsou podprostory $RR^5$, $dim(V) = 3, dim(W) = 3$. Co lze říci o $dim(V inter W)$ a $dim(V union.big W)$?

== Zadání (B):
Ať $dim(L) = n$ a $V, W$ jsou podprostory $L$ takové, že $dim(V) + dim(W) > n$. Dokažte, že $dim(V inter W) >= 1$.

== Postup Řešení na Tabuli:
1.  *Zopakování věty:* $dim(V) + dim(W) = dim(V union.big W) + dim(V inter W)$.

2.  *Řešení (A):*
    - $3 + 3 = 6 = dim(V union.big W) + dim(V inter W)$.
    - Omezení: $3 <= dim(V union.big W) <= 5$ a $0 <= dim(V inter W) <= 3$.
    - Možnosti:
        - $dim(V inter W) = 1 => dim(V union.big W) = 5$.
        - $dim(V inter W) = 2 => dim(V union.big W) = 4$.
        - $dim(V inter W) = 3 => dim(V union.big W) = 3$ (pak $V=W$).

3.  *Řešení (B):*
    - $dim(V inter W) = dim(V) + dim(W) - dim(V union.big W)$.
    - Víme, že $dim(V) + dim(W) > n$ a $dim(V union.big W) <= n$.
    - $dim(V inter W) > n - dim(V union.big W) >= n - n = 0$.
    - Jelikož $dim(V inter W)$ je celé číslo a je větší než 0, musí platit $dim(V inter W) >= 1$.

== Poznámky pro Vyučujícího:
- Ukažte geometrickou intuici v $RR^3$: dvě roviny ($dim=2$) se musí protnout, protože $2+2 > 3$.

= Problém 4.3.3 (3) – Výhled na Frobeniovu větu

== Zadání:
Dokažte ekvivalenci:
(a) $bvec() in span(arrow(a)_1,..., arrow(a)_s)$
(b) $dim(span(arrow(a)_1,..., arrow(a)_s)) = dim(span(arrow(a)_1,..., arrow(a)_s, bvec()))$.

== Postup Řešení na Tabuli:
1.  *Označení:* $W = span(arrow(a)_1,..., arrow(a)_s)$ a $V = span(bvec())$. Chceme dokázat $V subset.eq W <=> dim(W) = dim(W union.big V)$.
2.  *Použití problému 4.3.3(2) ze sbírky:* Tam je dokázáno, že pro podprostory $V, W$ platí $V subset.eq W <=> dim(V union.big W) = dim(W)$.
3.  *Aplikace:* Tvrzení přímo plyne z této vlastnosti, kde za $V$ vezmeme přímku generovanou vektorem $bvec()$.

== Shrnutí a Závěr:
Dnes jsme si ukázali, že dimenze je praktický nástroj.
1.  *Znalost dimenze* šetří práci při ověřování báze.
2.  *Věta o dimenzi spojení a průniku* umožňuje analyzovat vztahy mezi podprostory bez jejich explicitního výpočtu.
3.  Připravili jsme půdu pro *Frobeniovu větu*: vektor leží v lineárním obalu právě tehdy, když jeho přidáním nezvětšíme dimenzi tohoto obalu. To bude brzy náš hlavní nástroj pro určení, zda má soustava lineárních rovnic řešení.
