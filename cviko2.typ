#import "/book.typ": book-page

#show: book-page.with(title: "Cvičení 2")
= Problém 2.1.1 – Parametrický popis přímky v $RR^2$

== Zadání:
V rovině $RR^2$ je dvěma body $a=mat(4; 1)$ a $b=mat(-5; 3)$ zadána přímka $pi$. Nalezněte parametrický popis přímky $pi$.

== Klíčové Koncepty:
Bod vs. vektor, směrový vektor, parametrická rovnice přímky.

== Cíl Problému:
Naučit studenty základní mechaniku sestavení parametrické rovnice přímky ze dvou daných bodů.

== Postup Řešení na Tabuli:
1. "Co potřebujeme k popisu přímky? Bod, kterým prochází, a směr, kterým vede."
   - Jako *bod* můžeme zvolit například $p = a = mat(4; 1)$.
   - *Směr* přímky získáme jako vektor z bodu $a$ do bodu $b$:
     $ arrow(s) = b - a = mat(-5; 3) - mat(4; 1) = mat(-9; 2) $

2. "Nyní můžeme popsat každý bod $arrow(x)$ na přímce."
   - Každý bod $arrow(x)$ na přímce $pi$ získáme tak, že vyjdeme z bodu $p$ a posuneme se o nějaký násobek směrového vektoru $arrow(s)$.
   - Rovnice přímky $pi$ je tedy množina všech bodů $arrow(x)$ tvaru:
     $ arrow(x) = p + t dot arrow(s) quad "neboli" quad pi equiv mat(x_1; x_2) = mat(4; 1) + t dot mat(-9; 2), quad t in RR $

== Poznámky pro Vyučujícího:
- Zeptejte se studentů: "Je směrový vektor $arrow(s)$ určen jednoznačně?" (Odpověď: Ne. Jakýkoli nenulový násobek $k dot arrow(s)$ je také platný směr.)
- Zdůrazněte, že se vyhýbáme "obecné rovnici přímky" $alpha x_1 + beta x_2 = gamma$, protože ta skrývá pojem kolmosti, který jsme zatím nezavedli.

= Problém 2.1.4 – Kdy leží tři body na přímce?

== Zadání:
Ať $a, b$ a $c$ jsou po dvou různé body v $RR^2$. Nalezněte podmínku, která říká, že všechny tři body leží na jedné přímce.

== Klíčové Koncepty:
Směrový vektor, kollinearita.

== Cíl Problému:
Konceptuálně ověřit pochopení role směrového vektoru.

== Postup Řešení na Tabuli:
1. "Přímka určená body $a$ a $b$ má směr $arrow(s) = b - a$."
2. "Aby bod $c$ ležel na té samé přímce, musí vektor z $a$ do $c$ ukazovat stejným směrem."
3. Algebraicky to znamená, že vektor $arrow(u) = c - a$ musí být skalárním násobkem vektoru $arrow(s) = b - a$.
4. Musí tedy existovat $t in RR$ takové, že: $c - a = t dot (b - a)$.
5. *Závěr:* Body $a, b, c$ leží na jedné přímce právě tehdy, když vektor $c-a$ je skalárním násobkem vektoru $b-a$.

== Poznámky pro Vyučujícího:
- Zdůrazněte, že tato podmínka je přesně to, co budeme později nazývat *lineární závislostí* vektorů $(b-a)$ a $(c-a)$.

= Co znamená "směr"?

== Cíl:
Formálně dokázat, že intuitivní požadavek "směrový vektor $arrow(s)$ musí být nenulový" je ekvivalentní algebraické podmínce "z rovnosti $a dot arrow(s) = arrow(o)$ plyne $a=0$".

== Postup Řešení na Tabuli:
1. *Definice přímky:* V libovolném lineárním prostoru $L$ nad tělesem $FF$ definujeme přímku jako množinu bodů ${p + t dot arrow(s) | t in FF}$, kde $p in L$ je bod a $arrow(s) in L$ je směrový vektor, pro který požadujeme $arrow(s) != arrow(o)$.

2. *Tvrzení:* Pro $arrow(s) in L$ platí: $arrow(s) != arrow(o) <=> (a dot arrow(s) = arrow(o) => a=0)$.

3. *Důkaz $(=>)$:* Předpokládáme $arrow(s) != arrow(o)$. Chceme dokázat, že z $a dot arrow(s) = arrow(o)$ plyne $a=0$. Děláme to sporem: Nechť $a != 0$. Pak existuje $a^(-1)$. Z $a dot arrow(s) = arrow(o)$ vynásobením $a^(-1)$ zleva dostaneme $arrow(s) = arrow(o)$, což je spor.

4. *Důkaz $(<=)$:* Předpokládáme $(a dot arrow(s) = arrow(o) => a=0)$. Chceme ukázat, že $arrow(s) != arrow(o)$. Sporem: Nechť $arrow(s) = arrow(o)$. Pak ale pro $a=1$ máme $1 dot arrow(o) = arrow(o)$, i když $a != 0$. To je spor.

== Poznámky pro Vyučujícího:
- Řekněte studentům: "Téhle vlastnosti se brzy naučíme říkat *lineární nezávislost* vektoru $arrow(s)$."

= Problém 3.2.3 – Co znamená "dva směry"?

== Zadání:
Ať $arrow(v)$ je nenulový vektor v lineárním prostoru L nad $FF$. Ukažte, že jestliže pro vektor $arrow(w)$ z L platí $arrow(w) not in "span"(arrow(v))$, potom je množina ${arrow(v), arrow(w)}$ lineárně nezávislá.

== Klíčové Koncepty:
Lineární obal (span), lineární nezávislost.

== Cíl Problému:
Ukázat algebraický základ požadavku na dva směry roviny. Spojit geometrickou představu ("vektor neleží na přímce") s algebraickou definicí.

== Postup Řešení na Tabuli:
1. *Geometrická motivace:* "Pro rovinu potřebujeme dva směry. Geometricky to znamená, že druhý směr $arrow(w)$ nesmí ležet na přímce určené prvním směrem $arrow(v)$. Algebraicky: $arrow(w) not in "span"(arrow(v))$."

2. *Co chceme dokázat:* Z předpokladů $arrow(v) != arrow(o)$ a $arrow(w) not in "span"(arrow(v))$ chceme ukázat, že z rovnice $a dot arrow(v) + b dot arrow(w) = arrow(o)$ plyne $a=b=0$.

3. *Důkaz sporem:* Předpokládejme, že existuje netriviální řešení, tj. alespoň jedno z $a, b$ je nenulové.
   - *Případ 1: $b != 0$.* Pak existuje $b^(-1)$. Z rovnice můžeme vyjádřit $arrow(w)$:
     $ b dot arrow(w) = -a dot arrow(v) => arrow(w) = (-a dot b^(-1)) dot arrow(v) $
     To ale znamená, že $arrow(w)$ je násobkem $arrow(v)$, takže $arrow(w) in "span"(arrow(v))$. To je spor s předpokladem. Tedy $b$ musí být $0$.
   - *Případ 2: $b = 0$.* Dosadíme do původní rovnice: $a dot arrow(v) + 0 dot arrow(w) = arrow(o)$, což dává $a dot arrow(v) = arrow(o)$. Protože víme, že $arrow(v) != arrow(o)$, z předchozího důkazu vyplývá, že musí být $a=0$.

4. *Závěr:* V obou případech jsme došli k závěru, že jediné řešení je $a=b=0$.

== Poznámky pro Vyučujícího:
- Toto je přímá příprava na problém s rovinou. Nyní mají studenti formálně zdůvodněno, proč je podmínka "jeden směr není násobkem druhého" ekvivalentní silnější algebraické podmínce.

= Problém 2.2.1 – Přímka v $RR^3$

== Zadání:
V $RR^3$ jsou dány body $a=mat(1; 2; 3)$ a $b=mat(2; 1; 2)$. Nalezněte parametrickou rovnici přímky $pi$.

== Postup Řešení na Tabuli:
1. "Postup je úplně stejný jako v rovině."
2. Bod $p = a = mat(1; 2; 3)$. Směr $arrow(s) = b - a = mat(1; -1; -1)$.
3. Rovnice přímky: $pi equiv arrow(x) = mat(1; 2; 3) + t dot mat(1; -1; -1), quad t in RR$.

= Problém 2.2.2 – Parametrický popis roviny v $RR^3$

== Zadání:
V $RR^3$ jsou zadány body $a=mat(1; 1; 0)$, $b=mat(1; 0; 1)$, $c=mat(0; 1; 1)$. Nalezněte parametrickou rovnici roviny $pi$.

== Postup Řešení na Tabuli:
1. "K popisu roviny potřebujeme bod a dva 'nezávislé' směry."
   - *Bod:* $p=a = mat(1; 1; 0)$.
   - *Směrové vektory:*
     $ arrow(s_1) = b - a = mat(0; -1; 1), quad arrow(s_2) = c - a = mat(-1; 0; 1) $

2. "Jakou podmínku musí směry splňovat?"
   - Jak jsme si právě ukázali, geometrická představa "jeden směr není násobkem druhého" (což zde evidentně platí) je ekvivalentní algebraické podmínce: $t_1 arrow(s_1) + t_2 arrow(s_2) = arrow(o) => t_1=t_2=0$.

3. *Sestavení rovnice:*
   - Každý bod $arrow(x)$ v rovině $pi$ je dán jako $p$ plus nějaká lineární kombinace směrů $arrow(s_1)$ a $arrow(s_2)$.
   - Rovnice roviny $pi$:
     $ pi equiv arrow(x) = p + t_1 arrow(s_1) + t_2 arrow(s_2) = mat(1; 1; 0) + t_1 mat(0; -1; 1) + t_2 mat(-1; 0; 1), quad t_1, t_2 in RR $

== Poznámky pro Vyučujícího:
- Zde se kruh uzavírá. Studenti vidí, jak teoretický důkaz z problému 3.2.3 přímo ospravedlňuje postup, který zde používají.

= Shrnutí a Závěr:
Na konci hodiny shrňte hlavní myšlenku:
- Geometrické objekty jako přímky a roviny popisujeme jako *afinní podprostory*.
- Afinní podprostor má tvar *"bod + lineární obal směrů"*.
  - *Přímka:* $p + "span"(arrow(s))$, kde směr $arrow(s)$ musí být nenulový.
  - *Rovina:* $p + "span"(arrow(s_1), arrow(s_2))$, kde směry $arrow(s_1), arrow(s_2)$ nesmí být jeden násobkem druhého.
- Tyto podmínky na směry jsou příklady klíčového pojmu *lineární nezávislosti*.
