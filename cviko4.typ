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
    - Očekávaná odpověď: $dim(RR^3)=3$. Důvod: kanonická báze $K_3 = (evec()_1, evec()_2, evec()_3)$ má 3 prvky.
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
        - Jsou $vvec()_1 = vec(1,2,3)$ a $vvec()_2 = vec(1,3,2)$ lineárně nezávislé? Ano, nejsou násobky.
        - Leží $vvec()_3 = vec(1,0,0)$ v jejich obalu? Tj. $vec(1, 0, 0) = alpha vec(1, 2, 3) + beta vec(1, 3, 2)$?
        - Z rovnic $0 = 2alpha + 3beta$ a $0 = 3alpha + 2beta$ plyne $alpha=0, beta=0$. Dosazením do první rovnice souřadnic $1 = alpha + beta$ dostáváme $1=0$, což je spor.
        - Vektor $vvec()_3$ neleží ve $span(vvec()_1, vvec()_2)$.
    - *Konečný Závěr:* $B_1$ je seznam 3 LN vektorů v prostoru dimenze 3, je to tedy báze.

== Poznámky pro Vyučujícího:
- Zdůrazněte, že ověření počtu prvků seznamu je první a nejrychlejší krok.
- Ukažte, že teoretická znalost (věta o dimenzi) šetří polovinu práce. Heslo: "Buďme chytře líní."

= Problém 4.2.2 – Transformace báze

== Zadání:
Ať $(bvec()_1, bvec()_2, ... , bvec()_n)$ je uspořádaná báze lineárního prostoru $L$ nad $FF$. Rozhodněte, pro která $n >= 2$ je seznam $B' = (bvec()_1 + bvec()_2, bvec()_2 + bvec()_3,..., bvec()_n-1 + bvec()_n, bvec()_n + bvec()_1)$ opět bází prostoru $L$.

== Postup Řešení na Tabuli:
1.  *Analýza problému:* Máme $n$ vektorů v prostoru dimenze $n$. Stačí ověřit LN.
    $a_1(bvec()_1 + bvec()_2) + a_2(bvec()_2 + bvec()_3) + .. + a_n(bvec()_n + bvec()_1) = vec(0)$.
    Přeskupením: $(a_n + a_1)bvec()_1 + (a_1 + a_2)bvec()_2 + .. + (a_(n-1) + a_n)bvec()_n = vec(0)$.
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
$V, W$ jsou podprostory $RR^5$, $dim(V) = 3, dim(W) = 3$. Co lze říci o $dim(V inter W)$ a $dim(V or W)$?

== Zadání (B):
Ať $dim(L) = n$ a $V, W$ jsou podprostory $L$ takové, že $dim(V) + dim(W) > n$. Dokažte, že $dim(V inter W) >= 1$.

== Postup Řešení na Tabuli:
1.  *Zopakování věty:* $dim(V) + dim(W) = dim(V or W) + dim(V inter W)$.

2.  *Řešení (A):*
    - $3 + 3 = 6 = dim(V or W) + dim(V inter W)$.
    - Omezení: $3 <= dim(V or W) <= 5$ a $0 <= dim(V inter W) <= 3$.
    - Možnosti:
        - $dim(V inter W) = 1 => dim(V or W) = 5$.
        - $dim(V inter W) = 2 => dim(V or W) = 4$.
        - $dim(V inter W) = 3 => dim(V or W) = 3$ (pak $V=W$).

3.  *Řešení (B):*
    - $dim(V inter W) = dim(V) + dim(W) - dim(V or W)$.
    - Víme, že $dim(V) + dim(W) > n$ a $dim(V or W) <= n$.
    - $dim(V inter W) > n - dim(V or W) >= n - n = 0$.
    - Jelikož $dim(V inter W)$ je celé číslo a je větší než 0, musí platit $dim(V inter W) >= 1$.

== Poznámky pro Vyučujícího:
- Ukažte geometrickou intuici v $RR^3$: dvě roviny ($dim=2$) se musí protnout, protože $2+2 > 3$.

= Problém 4.3.3 (3) – Výhled na Frobeniovu větu

== Zadání:
Dokažte ekvivalenci:
(a) $bvec() in span(arrow(a)_1,..., arrow(a)_s)$
(b) $dim(span(arrow(a)_1,..., arrow(a)_s)) = dim(span(arrow(a)_1,..., arrow(a)_s, bvec()))$.

== Postup Řešení na Tabuli:
1.  *Označení:* $W = span(arrow(a)_1,..., arrow(a)_s)$ a $V = span(bvec())$. Chceme dokázat $V subset.eq W <=> dim(W) = dim(W or V)$.
2.  *Použití problému 4.3.3(2) ze sbírky:* Tam je dokázáno, že pro podprostory $V, W$ platí $V subset.eq W <=> dim(V or W) = dim(W)$.
3.  *Aplikace:* Tvrzení přímo plyne z této vlastnosti, kde za $V$ vezmeme přímku generovanou vektorem $bvec()$.

== Shrnutí a Závěr:
Dnes jsme si ukázali, že dimenze je praktický nástroj.
1.  *Znalost dimenze* šetří práci při ověřování báze.
2.  *Věta o dimenzi spojení a průniku* umožňuje analyzovat vztahy mezi podprostory bez jejich explicitního výpočtu.
3.  Připravili jsme půdu pro *Frobeniovu větu*: vektor leží v lineárním obalu právě tehdy, když jeho přidáním nezvětšíme dimenzi tohoto obalu. To bude brzy náš hlavní nástroj pro určení, zda má soustava lineárních rovnic řešení.

= Další rozšiřující příklady

== Příklad: Báze v prostoru polynomů

=== Zadání:
Je seznam $C = (1, x-1, (x-1)^2)$ bází prostoru polynomů stupně nejvýše 2, $RR_(<=2)[x]$?

=== Cíl:
Ukázat, že principy báze a dimenze fungují stejně i v prostorech, které nejsou $RR^n$.

=== Postup:
1.  *Dimenze:* Připomeneme, že $dim(RR_(<=2)[x]) = 3$. Standardní báze je $(1, x, x^2)$.
2.  *Počet vektorů:* Seznam $C$ má 3 prvky, což je správný počet. Stačí ověřit lineární nezávislost.
3.  *Lineární nezávislost:* Řešíme rovnici $a_1(1) + a_2(x-1) + a_3(x-1)^2 = 0$.
    - Roznásobením a přeskupením dostaneme: $a_3 x^2 + (a_2 - 2a_3)x + (a_1 - a_2 + a_3) = 0$.
    - Aby byl polynom nulový, musí být všechny jeho koeficienty nulové:
      $

        a_3 &= 0 \
        a_2 - 2a_3 &= 0 \
        a_1 - a_2 + a_3 &= 0

      $
    - Tato soustava má jediné řešení $a_1=a_2=a_3=0$. Polynomy jsou tedy lineárně nezávislé.
4.  *Závěr:* Seznam $C$ je bází prostoru $RR_(<=2)[x]$.

== Příklad: Mimoběžné roviny v $RR^4$

=== Zadání:
V prostoru $RR^4$ nalezněte dva podprostory (roviny) $V$ a $W$ takové, že $dim(V) = 2$, $dim(W) = 2$ a jejich průnik je pouze nulový vektor, tj. $V inter W = {vec(0)}$.

=== Cíl:
Konkrétně demonstrovat, že dvě roviny v $RR^4$ se mohou "minout" (protnout se jen v počátku).

=== Postup:
1.  *Strategie:* Chceme najít dvě báze, jejichž spojení bude generovat celý prostor $RR^4$. Tím pádem bude $dim(V or W) = 4$.
2.  *Volba bází:* Zvolme co nejjednodušší vektory z kanonické báze.
    - Nechť $V = span(evec()_1), evec()_2) = span(vec(1,0,0,0), vec(0,1,0,0))$. Toto je "rovina xy".
    - Nechť $W = span(evec()_3, evec()_4) = span(vec(0,0,1,0), vec(0,0,0,1))$. Toto je "rovina zw".
3.  *Ověření:*
    - Je zřejmé, že $dim(V)=2$ a $dim(W)=2$.
    - Spojení $V or W = span(evec()_1, evec()_2, evec()_3, evec()_4) = RR^4$, takže $dim(V or W) = 4$.
4.  *Věta o dimenzi:*
    $dim(V inter W) = dim(V) + dim(W) - dim(V or W) = 2 + 2 - 4 = 0$.
5.  *Závěr:* Průnikem je pouze podprostor dimenze 0, tedy ${vec(0)}$. Našli jsme dvě roviny, které se protínají pouze v počátku.
