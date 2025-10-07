#import "/book.typ": book-page

#show: book-page.with(title: "Cvičení 3")

= Klíčové termíny z přednášek k zopakování

Na začátku se studentů zeptáme, co probírali na poslední přednášce. Cílem je zopakovat a ujasnit si následující pojmy:

- *Lineární kombinace:*
  Řekneme, že vektor $vec(v)$ je _lineární kombinací_ vektorů $vec(v)_1, vec(v)_2, dots, vec(v)_k$ z lineárního prostoru $L$ nad tělesem $FF$, pokud existují skaláry $a_1, a_2, dots, a_k in FF$ takové, že platí:
  $ vec(v) = a_1 vec(v)_1 + a_2 vec(v)_2 + dots + a_k vec(v)_k = sum_(i=1)^k a_i vec(v)_i $
  Intuitivně: z vektorů $vec(v)_1, dots, vec(v)_k$ se pomocí sčítání a násobení skaláry "dostaneme" do vektoru $vec(v)$.

- *Lineární obal (span):*
  _Lineární obal_ množiny vektorů $M subset L$, značený $"span"(M)$, je množina všech možných lineárních kombinací vektorů z množiny $M$.
  - *Uzávěrové vlastnosti lineárního obalu:*
    1. Je to *nejmenší lineární podprostor* obsahující množinu $M$.
    2. Platí $M subset "span"(M)$.
    3. Pokud $M subset N$, pak $"span"(M) subset "span"(N)$.
    4. $"span"("span"(M)) = "span"(M)$ (obal obalu je tentýž obal).

- *Lineární podprostor:*
  Neprázdná podmnožina $W subset L$ se nazývá _lineární podprostor_, pokud je uzavřená na operace sčítání vektorů a násobení skalárem. To znamená:
  1. Pro každé $vec(u), vec(v) in W$ platí $vec(u) + vec(v) in W$.
  2. Pro každé $vec(u) in W$ a každý skalár $a in FF$ platí $a dot vec(u) in W$.
     (Stručně: každá lineární kombinace prvků z $W$ leží opět ve $W$.)

- *Lineární nezávislost/závislost:*
  - Množina vektorů ${vec(v)_1, dots, vec(v)_k}$ je *lineárně nezávislá (LN)*, pokud jediná lineární kombinace, která dává nulový vektor, je ta triviální. Tedy, rovnice:
    $ a_1 vec(v)_1 + a_2 vec(v)_2 + dots + a_k vec(v)_k = vec(0) $
    má jediné řešení $a_1 = a_2 = dots = a_k = 0$. Intuitivně: žádný z vektorů nelze vyjádřit jako kombinaci ostatních. Každý přináší "nový, nezávislý směr".
  - Množina je *lineárně závislá (LZ)*, pokud není lineárně nezávislá. To znamená, že existuje alespoň jedno netriviální řešení (alespoň jeden skalár $a_i != 0$). Intuitivně: alespoň jeden vektor je "zbytečný", protože ho lze nakombinovat z ostatních.

= Problém 1 – Práce se sumami

*Zadání:*
(a) Platí rovnost $sum_(i=1)^r (sum_(j=1)^s a_(i j)) = sum_(j=1)^s (sum_(i=1)^r a_(i j))$?
(b) Platí analogie v lineárním prostoru $L$ nad $FF$?
(c) Lze výraz $sum_(i=1)^r ( sum_(j=1)^s a_i dot vec(v)_j )$ zapsat jako "skalár krát vektor"?

*Postup řešení na tabuli:*
1. *Část (a), (b):* Vysvětlit koncept součtu po řádcích vs. po sloupcích. Zdůraznit, že rovnost platí díky *asociativitě* a *komutativitě* sčítání jak v $FF$, tak v $L$.

2. *Část (c):* Ukázat úpravu krok za krokem:
   $ sum_(i=1)^r ( sum_(j=1)^s a_i dot vec(v)_j ) = sum_(i=1)^r ( a_i dot sum_(j=1)^s vec(v)_j ) = ( sum_(i=1)^r a_i ) dot ( sum_(j=1)^s vec(v)_j ) $
   Zdůraznit, že jsme potřebovali *distributivitu*.

= Problém 2 – Lineární nezávislost a role tělesa

*Zadání:*
(a) V $RR$ nad $RR$ najděte (i) jeden a (ii) dva LN vektory.
(b) V $RR$ nad $QQ$ najděte (i) jeden a (ii) dva LN vektory.

*Postup řešení na tabuli:*
1. *Část (a):*
   (i) Jakýkoliv nenulový vektor, např. $vec(v)=1$.
   (ii) Nejde to. Dva nenulové vektory $vec(v)_1, vec(v)_2 in RR$ jsou vždy závislé, protože $vec(v)_2 = (vec(v)_2/vec(v)_1) dot vec(v)_1$ a skalár $(vec(v)_2/vec(v)_1) in RR$.

2. *Část (b):*
   (i) Stejně jako předtím, např. $vec(v)=1$.
   (ii) Vektory $vec(v)_1 = 1$ a $vec(v)_2 = sqrt(2)$. Rovnice $a dot 1 + b dot sqrt(2) = 0$ pro $a, b in QQ$ má jen triviální řešení $a=b=0$. Důkaz sporem (pokud $b != 0$, pak $sqrt(2) = -a/b$, což je spor, protože $sqrt(2)$ není racionální).

= Problém 3 – Rozšíření lineárně nezávislé množiny

*Zadání:* Ať $M={vec(v)_1, vec(v)_2}$ je LN a $vec(w) in.not text("span")(M)$. Dokažte, že ${vec(v)_1, vec(v)_2, vec(w)}$ je LN.

*Postup řešení na tabuli:*
1. *Geometrická intuice:* Dva LN vektory v $RR^3$ generují rovinu. Vektor mimo tuto rovinu přidává nový směr.
2. *Formální důkaz:* Sporem. Předpokládejme, že $a_1 vec(v)_1 + a_2 vec(v)_2 + b vec(w) = vec(0)$ má netriviální řešení.
   - Pokud $b != 0$, lze vyjádřit $vec(w)$ jako LK $vec(v)_1, vec(v)_2$, což je spor.
   - Pokud $b = 0$, pak $a_1 vec(v)_1 + a_2 vec(v)_2 = vec(0)$. Z LN množiny $M$ plyne $a_1=a_2=0$. To je triviální řešení, což je spor s předpokladem netriviálního řešení.
   Jediné řešení je tedy triviální.

= Problém 4 – Redukce lineárně závislé množiny

*Zadání:* Ať $M={vec(v)_1, vec(v)_2, vec(v)_3}$ je LZ. Dokažte, že existuje $vec(w) in M$ tak, že $"span"(M) = "span"(M backslash {vec(w)})$.

*Postup řešení na tabuli:*
1. *Od definice:* Z LZ plyne existence netriviální LK $a_1 vec(v)_1 + a_2 vec(v)_2 + a_3 vec(v)_3 = vec(0)$.
2. *Vyjádření vektoru:* Pokud např. $a_3 != 0$, můžeme vyjádřit $vec(v)_3 = -a_1/a_3 dot vec(v)_1 - a_2/a_3 dot vec(v)_2$. Vektor $vec(v)_3$ je tedy "zbytečný".
3. *Důkaz rovnosti obalů:* Ukažte obě inkluze. Jedna je zřejmá. Pro druhou ($subset.eq$) ukažte, že libovolnou LK všech tří vektorů lze přepsat jako LK jen prvních dvou dosazením za $vec(v)_3$.
