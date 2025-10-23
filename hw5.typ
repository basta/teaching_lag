#import "/book.typ": book-page

#show: book-page.with(title: "Domácí úkol 5")

#set text(lang: "cs")

= Domácí úkol: Maticové násobení a operace

== Problém 1 (Problém 6.1.1 ze sbírky)

Popište maticí lineární zobrazení $A: RR^4 -> RR^2$, pro které platí
$ A e_1 = vec(1, -3) $
$ A e_2 = vec(1, -3) $
$ A e_3 = vec(2, 4) $
$ A e_4 = vec(11, 3) $
Spočtěte hodnotu $A x$ pro vektor $x = vec(1, 1, 2, 0)$.

== Problém 2 (Problém 6.3.1 (1) ze sbírky)

Pokud to jde, spočtěte $B dot A$ pro reálné matice $A$ a $B$.
$ A = mat(1, -1; 1, 1) $
$ B = mat(2, 1; 3, 2) $

== Problém 3 (Problém 5.1.3 ze sbírky)

Pro matice
$ A = vec(2, 3, 4) $
$ B = mat(2, 3, 4) $
nad $ZZ_5$ spočtěte maticové součiny $A dot B$ a $B dot A$.

== Problém 4 (Problém 6.1.4 ze sbírky)

Rozhodněte, zda lze spočíst $A dot (B + C)$ kde
$ A = mat(2, 0; -3, 4; 1, 5) $
$ B = mat(2, 3, 3; 1, 1, 2) $
$ C = mat(4, 2, 5; -1, 2, 1) $
jsou matice nad $RR$.
Pokud to lze, matici $A dot (B+C)$ spočtěte.

== Problém 5 (Problém 5.1.7 ze sbírky)

Dejte geometrický význam reálné matici
$ mat(1, a; 0, 1) $
kde $a$ je nenulové reálné číslo.

== Problém 6 (Problém 6.3.2 ze sbírky)

Ukažte, že pro každé přirozené číslo $n$ platí rovnost
$ mat(1, 1; 0, 1)^n = mat(1, n; 0, 1) $
kde, pro jakoukoli matici $M: RR^2 -> RR^2$ definujeme
$ M^n = cases(
  E_2 " pro " n = 0,
  M dot M^(n-1) " pro " n > 0
) $
