
#import "@preview/shiroa:0.2.3": *

#show: book

#build-meta(
  dest-dir: "docs",
)

#book-meta(
  title: "Podklady k cvičení LAG",
  language: "cs",
  summary: [
    // #prefix-chapter("sample-page.typ")[Hello, typst]
    #prefix-chapter("index.typ")[Domů]

    = Cvičení 21.9
    - #chapter("cviko1.typ")[Příklady ze cvičení]
    - #chapter("hw1.typ")[Zadání domácích úkolů]

    = Cvičení 28.9
    - #chapter("cviko2.typ")[Příklady ze cvičení]
    - #chapter("hw2.typ")[Zadání domácích úkolů]

    = Cvičení 06.10
    - #chapter("cviko3.typ")[Příklady ze cvičení]
    - #chapter("hw3.typ")[Zadání domácích úkolů]

    = Cvičení 13.10
    - #chapter("cviko4.typ")[Příklady ze cvičení]
    - #chapter("hw4.typ")[Zadání domácích úkolů]




  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
