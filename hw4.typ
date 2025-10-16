#import "/book.typ": book-page

#show: book-page.with(title: "Úkoly ke cvičení 4")

== Úkol 1: Ověřování báze v $RR^4$

Rozhodněte a *pečlivě zdůvodněte*, zda je následující seznam vektorů $B$ bází lineárního prostoru $RR^4$ nad $RR$. Využijte znalosti, že $dim(RR^4) = 4$.

$ B = ( vec(1, 2, 0, 1), vec(0, 1, 1, 0), vec(1, 3, 1, 1), vec(2, 5, 2, 2) ) $

*Nápověda:* Zjistěte, zda je seznam lineárně nezávislý. Nemusíte ověřovat, že generuje celý prostor, pokud víte, kolik má seznam prvků a jaká je dimenze $RR^4$.

== Úkol 2: Báze v prostoru polynomů

Uvažujme lineární prostor $RR_(<=2)[x]$ všech reálných polynomů stupně nejvýše 2. Víme, že $dim(RR_(<=2)[x]) = 3$.

a) Dokažte, že seznam polynomů $C = (x^2 + 1, x - 2, x^2 + x)$ je bází tohoto prostoru.

b) Nalezněte souřadnice polynomu $p(x) = 5x^2 + 4x - 9$ vzhledem k této bázi $C$.

*Nápověda pro b):* Hledáte koeficienty $a_1, a_2, a_3$ takové, že $p(x) = a_1(x^2+1) + a_2(x-2) + a_3(x^2+x)$. Porovnáním koeficientů u jednotlivých mocnin $x$ získáte soustavu tří lineárních rovnic pro tři neznámé.

== Úkol 3: Aplikace věty o dimenzi

V lineárním prostoru $L$ o dimenzi $dim(L)=10$ jsou dány dva podprostory $V$ a $W$. Víme, že $dim(V)=7$ a $dim(W)=5$.

a) Jaká je nejmenší možná dimenze jejich spojení $V or W$?
b) Jaká je největší možná dimenze jejich průniku $V inter W$?
c) Dokažte, že jejich průnik $V inter W$ nemůže být pouze nulový vektor.

*Nápověda:* Využijte větu o dimenzi spojení a průniku a nerovnosti, které platí pro dimenze podprostorů (např. $dim(V or W) <= dim(L)$ a $dim(V inter W) >= 0$).

== Co je to direktní součet? (Vysvětlení k bonusovému úkolu)

Než se pustíte do bonusového úkolu, zopakujme si klíčový pojem. Říkáme, že lineární prostor $L$ je *direktním součtem* svých podprostorů $V$ a $W$, a píšeme $L = V plus.circle W$, pokud jsou splněny *obě* následující podmínky:

1.  $V or W = L$ (jejich součet je celý prostor)
2.  $V inter W = {vec(0)}$ (jejich průnik je pouze nulový vektor)

První podmínka říká, že každý vektor z $L$ lze napsat jako součet vektoru z $V$ a vektoru z $W$. Druhá podmínka zaručuje, že tento rozklad je *jednoznačný*. Klasickým příkladem je rozklad roviny $RR^2$ na osu x ($V$) a osu y ($W$). Platí $RR^2 = V plus.circle W$, protože každý bod v rovině má jednoznačný rozklad na svou x-ovou a y-ovou složku.

== Úkol 4 (Bonus): Teoretický důkaz
$$
Ať $V$ a $W$ jsou dva lineární podprostory konečněrozměrného prostoru $L$. Dokažte, že pokud $dim(V) + dim(W) = dim(L)$, nemusí nutně platit, že $L = V plus.circle W$ (tedy že $L$ je direktním součtem $V$ a $W$).

*Nápověda:* Aby platilo $L = V or W$, musí být splněny obě podmínky z definice výše. Najděte v $RR^2$ nebo $RR^3$ protipříklad – dva podprostory $V$ a $W$, pro které součet jejich dimenzí sice odpovídá dimenzi celého prostoru, ale jejich průnik není triviální.
