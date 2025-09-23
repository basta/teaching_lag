#import "/book.typ": book-page

#show: book-page.with(title: "Úkoly ke cvičení 1")


Cílem tohoto úkolu je procvičit si myšlenky z prvního cvičení a připravit se na geometrická témata, která nás čekají. Ukážeme si, jak se principy, které znáte z reálné geometrie, dají aplikovat i na "konečné světy" čísel. Možná vám některé úkoly nepůjdou, ale to nevadí - i snaha vám to částečně dá do hlavy ;)

== Úkol 1: Geometrie nad konečným tělesem

Vytvořte "rovinu", kde souřadnice bodů bereme z tělesa $ZZ_5 = \{0, 1, 2, 3, 4\}$.

1. Kolik bodů má celá tato rovina? (Krátce zdůvodněte).
2. Najděte a vypište všechny body $(x, y)$, které leží na přímce dané rovnicí $y = 3x + 2$. Všechny výpočty provádějte v $ZZ_5$.


== Úkol 2: Od bodů k parametrickému popisu

V rovině nad $ZZ_5$ si vyberte *dva libovolné, ale různé* body, které jste našli na přímce $y = 3x+2$ v předchozím úkolu. Označme je $A$ a $B$. V tomto příkladě je vektor jednoduše dvojice čísel, která popisují daný bod souřadnicemi $x,y$. Píšeme jako $ A = vec(x,y) limits(=)^"například" vec(1.5, -2) $

1. Vypočítejte "směrový vektor" $vec(s) = B - A$.
   _(Vektory odčítáme po složkách, stejně jako v $RR^2$, ale počítáme v $ZZ_5$.)_

2. Nyní popište všechny body na přímce procházející bodem $A$ se směrem $vec(s)$ pomocí parametru $t in ZZ_5$. Tedy najděte všech pět bodů tvaru $P(t) = A + t dot.c vec(s)$ pro $t=0, 1, 2, 3, 4$.

3. Porovnejte množinu bodů, kterou jste dostali v bodě 2., s množinou všech bodů na přímce z Úkolu 1. Co pozorujete?


== Úkol 3: Proč geometrie potřebuje těleso?

Představte si "rovinu" nad množinou $ZZ_6 = \{0, 1, 2, 3, 4, 5\}$, který, jak víme, *není těleso*. Zkuste najít průsečík dvou přímek:
- Přímka 1: $y = 2x + 1$
- Přímka 2: $y = 5x + 4$

a) Sestavte rovnici pro souřadnici $x$ průsečíku (dejte rovnice do rovnosti).
b) Najděte *všechna* řešení této rovnice v $ZZ_6$.
   _(Nápověda: Zkoušejte postupně dosazovat všechny prvky ze $ZZ_6$ za $x$.)_
c) Kolik průsečíků tyto dvě přímky mají? Co je na tom "divného" oproti geometrii v $RR^2$? Čím je tento jev způsoben? (Odpovězte jednou větou s použitím pojmů z cvičení).

