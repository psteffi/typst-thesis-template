#import "main/main.typ": main-thesis
#import "acronyms.typ": acronyms
#import "abstract.typ": abstract-de, abstract-en
#import "appendix.typ" as appendix

#show: main-thesis.with(
  //title-de: [Titel der Thesis],
  //title-en: [Title of the thesis],
  author-surname: "Mustermann",
  author-given-name: "Max",
  abstract-de: abstract-de,
  abstract-en: abstract-en,
  lang: "de",
  bibliography: bibliography("refs.bib", style: "ieee", title: "Literaturverzeichnis"),
  acronyms: acronyms,
  appendix: appendix,
  signature: image("main/images/unterschrift.png"),
)
