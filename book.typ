
#import "@preview/shiroa:0.2.3": *

#show: book

#book-meta(
  title: "Podklady k cvičení LAG",
  summary: [
    // #prefix-chapter("sample-page.typ")[Hello, typst]
    #prefix-chapter("index.typ")[Domů]

 
    = Cvičení 21.9
    #prefix-chapter("cviko1.typ")[Příklady ze cvičení]
    #prefix-chapter("hw1.typ")[Zadání domácích úkolů]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
