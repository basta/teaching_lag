#import "/book.typ": book-page

#show: book-page.with(title: "Úkoly ke cvičení 3")

= Domácí úkoly ke 3. cvičení z Lineární algebry


== Problém 1: Lineární obal a sjednocení množin

*Zadání:* Ať $M$ a $N$ jsou libovolné podmnožiny lineárního prostoru $L$. Rozhodněte, zda *vždy* platí rovnost:
$ "span"(M union N) = "span"(M) union "span"(N) $
Své tvrzení dokažte, pokud platí. Pokud neplatí, najděte konkrétní protipříklad.

*Návod:*
1.  *Geometrická úvaha:* Představte si v $RR^2$ dvě různé přímky procházející počátkem. Každá z nich je lineárním podprostorem. Jejich sjednocení (pravá strana rovnosti) je "kříž". Je tento kříž také lineárním podprostorem? Co se stane, když sečtete vektor z jedné přímky s vektorem z druhé přímky? Kam výsledek padne?
2.  *Konstrukce protipříkladu:* Pokud usoudíte, že rovnost obecně neplatí, je třeba sestrojit konkrétní protipříklad. To znamená specifikovat:
    - Těleso $FF = ...$
    - Lineární prostor $L = ...$
    - Množinu $M = {...}$
    - Množinu $N = {...}$
    (Doporučuji $L=RR^2$ a za $M$ a $N$ zvolit jednoprvkové množiny s lineárně nezávislými vektory.)
3.  *Důkaz nerovnosti:* Pro váš příklad ukažte, že rovnost neplatí. Nejlépe tak, že najdete vektor, který leží v levé straně rovnice, ale ne v pravé.

---

== Problém 2: Skrytá lineární závislost

*Zadání:* Uvažujte lineární prostor $L = RR$ nad tělesem $FF = QQ$. Rozhodněte, zda je množina vektorů ${1, sqrt(2), sqrt(4)}$ lineárně závislá, nebo nezávislá. Své tvrzení pečlivě dokažte.

*Návod:*
1.  Napište si definiční rovnici pro zjištění lineární (ne)závislosti:
    $ a dot 1 + b dot sqrt(2) + c dot sqrt(4) = 0 $
    kde hledáte řešení pro skaláry $a, b, c in QQ$.
2.  Než se pustíte do složitých úprav, zanalyzujte všechny "vektory" ve zkoumané množině. Opravdu jsou všechny takové, jak se na první pohled zdají?
3.  Pokud najdete netriviální řešení (tj. alespoň jeden z koeficientů $a, b, c$ je nenulový), dokázali jste, že množina je lineárně závislá. Napište explicitně jednu takovou netriviální kombinaci, která dává nulu.

---

== Problém 3: Pravda, nebo lež?

*Zadání:* Rozhodněte, zda jsou následující tvrzení pravdivá, nebo nepravdivá. Své rozhodnutí vždy zdůvodněte (stručným důkazem nebo konkrétním protipříkladem).

(a) "Pokud je množina ${vec(u), vec(v), vec(w)}$ lineárně závislá, pak lze vektor $vec(w)$ vždy vyjádřit jako lineární kombinaci vektorů $vec(u)$ a $vec(v)$."

(b) "Pokud vektor $vec(v)$ leží v $"span"({vec(u), vec(w)})$, pak je množina ${vec(u), vec(v), vec(w)}$ lineárně závislá."

*Návod:*
1.  Pro (a): Pečlivě si projděte definici lineární závislosti. Co když je závislost "schovaná" pouze mezi vektory $vec(u)$ a $vec(v)$ a vektor $vec(w)$ je na nich nezávislý? Zkuste sestrojit protipříklad v $RR^3$.
2.  Pro (b): Napište si, co znamená "$vec(v) in "span"({vec(u), vec(w)})$". Z definice to znamená, že $vec(v) = a dot vec(u) + c dot vec(w)$ pro nějaké skaláry $a, c$. Jak z této rovnice snadno vytvoříte netriviální nulovou lineární kombinaci všech tří vektorů?
