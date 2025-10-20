#import "/book.typ": book-page

#show: book-page.with(title: "Cvičení 5")

#set text(lang: "cs")

= Rekapitulace z přednášek (04A, 04B):
+ *Lineární zobrazení:* $f(sum a_i x_i) = sum a_i f(x_i)$. Je jednoznačně určeno hodnotami na bázi.
+ *Matice zobrazení $A: FF^s -> FF^r$:* Sloupce matice $A$ jsou obrazy vektorů kanonické báze, tj. $A = (A dot e_1, ..., A dot e_s)$.
+ *Násobení matice vektorem:* $A dot x = sum_(j=1)^s x_j (A dot e_j)$. Toto je základní operace např. v neuronových sítích.
+ *Operace s maticemi:*
  + *Sčítání:* Po složkách (jen pro matice stejných rozměrů).
  + *Násobení skalárem:* Každá složka se násobí skalárem.
  + *Násobení matic (Skládání zobrazení):* Pro $A: FF^s -> FF^p$ a $B: FF^p -> FF^r$ je součin $C = B dot A$ zobrazení $FF^s -> FF^r$.
+ *Vlastnosti:* Násobení je asociativní, ale obecně *není komutativní*. Jednotková matice $E_n$ funguje jako neutrální prvek.

---

= Problém 5.1.4 – Je posunutí lineární?
*Zadání:*
Ať $f:RR^2 -> RR^2$ je zobrazení definované takto
$ f(vec(x, y)) = vec(x, y) + vec(1, 1) $
Ukažte, že $f$ není lineární zobrazení.

*Postup Řešení na Tabuli:*
1. *Podmínka nulového vektoru:* Pro lineární zobrazení $f$ musí platit $f(vec(o)) = vec(o)$.
2. *Výpočet:*
   $ f(vec(0, 0)) = vec(0, 0) + vec(1, 1) = vec(1, 1) $
3. *Závěr:* Protože $f(vec(o)) != vec(o)$, zobrazení $f$ není lineární.

---

= Problém 5.1.2 – Zápis matice a výpočet obrazu vektoru
*Zadání:*
Lineární zobrazení $M:RR^3 -> RR^4$ je určeno hodnotami:
$ M:e_1 |-> vec(3, -2, 2, 2), quad M:e_2 |-> vec(2, -3, 5, 12), quad M:e_3 |-> vec(-16, 2, -4, 1) $
(1) Zapište M jako matici.
(2) Nalezněte funkční hodnotu M ve vektoru $vec(-3, 2, 1)$.

*Postup Řešení na Tabuli:*
1. *Sestavení matice:* Sloupce matice jsou obrazy vektorů kanonické báze.
   $ M = (M dot e_1, M dot e_2, M dot e_3) = mat(3, 2, -16; -2, -3, 2; 2, 5, -4; 2, 12, 1) $
2. *Výpočet obrazu vektoru:* Obraz $M dot x$ je lineární kombinace sloupců matice $M$ s koeficienty z vektoru $x$.
   $ M dot vec(-3, 2, 1) = (-3) * vec(3, -2, 2, 2) + 2 * vec(2, -3, 5, 12) + 1 * vec(-16, 2, -4, 1) $
   $ = vec(-9 + 4 - 16, 6 - 6 + 2, -6 + 10 - 4, -6 + 24 + 1) = vec(-21, 2, 0, 19) $

---

= Problém 5.1.6 – Rotace v Grafice a Herních Enginech
*Zadání:*
Matice rotace v $RR^2$ je $R_alpha = mat(cos alpha, -sin alpha; sin alpha, cos alpha)$. Z geometrického faktu, že složení dvou rotací je opět rotace, musí platit $R_alpha dot R_beta = R_(alpha+beta)$. Odvoďte z této maticové rovnosti součtové vzorce pro $sin(alpha+beta)$ a $cos(alpha+beta)$.

*Postup Řešení na Tabuli:*
1. *Vynásobení matic $R_alpha dot R_beta$*:
   $ R_alpha dot R_beta = mat(cos alpha, -sin alpha; sin alpha, cos alpha) dot mat(cos beta, -sin beta; sin beta, cos beta) $
   $ = mat(
       cos alpha cos beta - sin alpha sin beta, -cos alpha sin beta - sin alpha cos beta;
       sin alpha cos beta + cos alpha sin beta, -sin alpha sin beta + cos alpha cos beta
     ) $
2. *Zápis matice $R_(alpha+beta)$*:
   $ R_(alpha+beta) = mat(cos(alpha+beta), -sin(alpha+beta); sin(alpha+beta), cos(alpha+beta)) $
3. *Porovnání položek* z rovnosti $R_alpha dot R_beta = R_(alpha+beta)$:
   + *Položka (1,1):* $cos(alpha+beta) = cos alpha cos beta - sin alpha sin beta$
   + *Položka (2,1):* $sin(alpha+beta) = sin alpha cos beta + cos alpha sin beta$

---

= Problém 5.2.1 – Reflexe (Zrcadlení) a Algebra Matice
*Zadání:*
Ukažte, že pro matici $A:RR^2 -> RR^2$ z rovnosti $A^2 = E_2$ neplyne nutně ani $A=E_2$, ani $A=-E_2$. Najděte příklad takové matice a vysvětlete její geometrický význam.

*Postup Řešení na Tabuli:*
1. *Hledáme geometrickou transformaci*, která je sama sobě inverzí. Kandidát: reflexe (zrcadlení).
2. *Matice reflexe podle osy x:*
   + $e_1 = vec(1, 0) |-> vec(1, 0)$
   + $e_2 = vec(0, 1) |-> vec(0, -1)$
   + Matice je $A = mat(1, 0; 0, -1)$. Zjevně $A != E_2$ a $A != -E_2$.
3. *Ověření $A^2=E_2$*:
   $ A^2 = mat(1, 0; 0, -1) dot mat(1, 0; 0, -1) = mat(1, 0; 0, 1) = E_2 $
4. *Závěr:* Našli jsme příklad. Geometricky: dvojí zrcadlení podle stejné osy je identita.

---

= Problém 6.3.3 (Motivační Bonus) – Posunutí v Grafice pomocí Matic
*Zadání:*
Vymyslete matici, která realizuje posunutí bodu $vec(x, y, 1)$ do bodu $vec(x+a, y+b, 1)$.

*Postup Řešení na Tabuli:*
1. *Motivace:* Posunutí není lineární, ale chceme ho reprezentovat maticí. Použijeme "trik" - bod $vec(x,y)$ z $RR^2$ reprezentujeme jako vektor $vec(x, y, 1)$ z $RR^3$ (homogenní souřadnice).
2. *Cíl:* Hledáme matici $T$ rozměrů $3 times 3$ takovou, že:
   $ T dot vec(x, y, 1) = vec(x+a, y+b, 1) $
3. *Odvození řádků matice $T$*:
   + První řádek výsledku: $x+a = 1*x + 0*y + a*1$. Řádek je $(1, 0, a)$.
   + Druhý řádek výsledku: $y+b = 0*x + 1*y + b*1$. Řádek je $(0, 1, b)$.
   + Třetí řádek výsledku: $1 = 0*x + 0*y + 1*1$. Řádek je $(0, 0, 1)$.
4. *Výsledná matice posunutí (translace)*:
   $ T_(a,b) = mat(1, 0, a; 0, 1, b; 0, 0, 1) $
5. *Ověření*:
   $ mat(1, 0, a; 0, 1, b; 0, 0, 1) dot vec(x, y, 1) = vec(1x + 0y + a*1, 0x + 1y + b*1, 0x + 0y + 1*1) = vec(x+a, y+b, 1) $
   Funguje to. Tímto způsobem můžeme všechny 2D transformace (rotace, škálování, posunutí...) reprezentovat jako násobení matic $3 times 3$.

  = Problém 5.1.8 (Motivační Bonus) – Matice jako Komplexní Čísla
   *Zadání:*
   Pro libovolná reálná čísla $a, b$ definujeme matici $M_(a,b) = mat(a, -b; b, a)$.
   Ukažte, že tato sada matic se sčítáním a násobením chová stejně jako komplexní čísla $z = a + b i$.
   (1) Ukažte, že $M_(a,b) + M_(a',b') = M_(a+a', b+b')$.
   (2) Ukažte, že $M_(a,b) dot M_(a',b') = M_(a a' - b b', a'b + a b')$.

   *Postup Řešení na Tabuli:*
   1.  **Srovnání s komplexními čísly:** Připomeňme si operace s komplexními čísly:
       + $(a+b i) + (a'+b'i) = (a+a') + (b+b')i$
       + $(a+b i) dot (a'+b'i) = (a a' - b b') + (a b' + a'b)i$
   2.  **Ověření sčítání matic (bod 1):**
       $ M_(a,b) + M_(a',b') = mat(a, -b; b, a) + mat(a', -b'; b', a') = mat(a+a', -(b+b'); b+b', a+a') = M_(a+a', b+b') $
       "Odpovídá sčítání komplexních čísel."
   3.  **Ověření násobení matic (bod 2):**
       $ M_(a,b) dot M_(a',b') = mat(a, -b; b, a) dot mat(a', -b'; b', a') $
       $ = mat(a a' - b b', -a b' - b a'; b a' + a b', -b b' + a a') $
       $ = mat(a a' - b b', -(a b' + a'b); a'b + a b', a a' - b b') = M_(a a' - b b', a'b + a b') $
       "Odpovídá násobení komplexních čísel."
   4.  **Geometrický význam a motivace:**
       + Komplexní číslo $z = r(cos alpha + i sin alpha)$ představuje rotaci o úhel $alpha$ a škálování (změnu velikosti) o faktor $r$.
       + Násobení komplexními čísly tedy skládá tyto rotace a škálování.
       + Matice $M_(a,b)$ dělá totéž v $RR^2$. Pokud $a = r cos alpha$ a $b = r sin alpha$, pak $M_(a,b) = r dot R_alpha$.
       + *Závěr:* Množina matic tvaru $mat(a, -b; b, a)$ je izomorfní s tělesem komplexních čísel. To nám umožňuje reprezentovat 2D rotace a uniformní škálování pomocí jediné algebraické struktury, což je v grafice a fyzikálních simulacích velmi elegantní a efektivní.
