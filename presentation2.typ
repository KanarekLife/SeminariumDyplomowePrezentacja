#import "@preview/typslides:1.2.5": *

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  theme: "dusky",
)

#set document(
  title: "Seminarium Dyplomowe Inżynierskie - ResearchCruiseApp",
  author: ("Stanisław Nieradko 193044", "Bartłomiej Krawisz 193319", "Paweł Pstrągowski 193473")
)

#set text(
  font: "Raleway",
  size: 10pt
)

#front-slide(
  title: "Seminarium Dyplomowe Inżynierskie - Część II",
  subtitle: [Rozwój portalu wspierającego obsługę rejsów dla biura Armatora Wydział Oceanografii i Geografii UG],
  authors: list(
    [Bartłomiej Krawisz 193319],
    [Paweł Pstrągowski 193473],
    [Stanisław Nieradko 193044]
  )
)

#table-of-contents(title: "Agenda")

#title-slide[
  Harmonogram prac
]

#slide(title: "Harmonogram prac")[
  #set text(size: 18pt)
  #table(
    columns: (1fr, 1fr),
    table.header(
      [*Termin*], [*Zadanie*],
      [13 maja 2025], [Zakończenie prac nad refaktorem aplikacji, wypuszczenie nowej wersji 2.0.0],
      [czerwiec 2025 - październik 2025], [Implementacja nowych funkcjonalności oraz naprawa znajdywanych błędów],
      [21 września 2025], [Wprowadzenie testów automatycznych do projektu],
      [październik 2025 - grudzień 2025], [Zapoznanie kolejnego zespołu z projektem],
      [październik 2025 - grudzień 2025], [Opis prac związanych z projektem w postaci pracy inżynierskiej],
      [listopad 2025 - grudzień 2025], [Wdrożenie nowej wersji aplikacji oraz ew. naprawa krytycznych błędów]
    ),
  )

  Równolegle zaplanowane są regularne konsulatcje z promotorem oraz klientami w interwałach odpowiednio 2 tygodni oraz miesiąca.
]

#title-slide[
  Stan pracy
]

#slide(title: "Stan pracy na moment pierwszej prezentacji")[
  - Większość prac związanych z nowymi funkcjonalnościami dobiegła końca.
  - Testy automatyczne zgodnie z planem zostały wdrożone do projektu oraz pipeline'u CI.
  - Aktualnie zajmujemy się:
    - Wdrażaniem nowej wersji na środowisko klienta
    - Wprowadzaniem nowego zespołu, który ma przejąć obowiązek utrzymywania aplikacji
    - Opisywaniem naszego projektu w pracy inżynierskiej.
]

#slide(title: "Aktualny stan pracy")[
  - Nasz zespół zakończył już pracę nad dodawaniem nowych funkcjonalności.
  - Testy automatyczne zgodnie z planem zostały wdrożone do projektu oraz pipeline'u CI.
  - Nowa wersja aplikacji została wdrożona na środowisko klienta 20 listopada 2025.
  - Nowy zespół został wdrożony w projekt, pracują oni aktualnie nad zgłoszonymi problemami i kolejnymi funkcjonalnościami.
  - Większość naszej pracy inżynierskiej została już napisana, pozostały tylko końcowe poprawki.
]

#title-slide[
  Przegląd zastosowanych technologii przy przepisywaniu frontendu
]

#title-slide[
  Porównanie narzędzi do testów automatycznych
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  Najpopularniejsze rozwiązania stosowane w branży:
  #grid(columns: 4, gutter: 3em, align: center,
    grid(columns: 1, gutter: 1em, image("imgs/selenium_logo.png"), text("Selenium")),
    grid(columns: 1, gutter: 1em, image("imgs/cypress_logo.png"), text("Cypress")),
    grid(columns: 1, gutter: 1em, image("imgs/puppeteer_logo.png"), text("Puppeteer")),
    grid(columns: 1, gutter: 1em, image("imgs/playwright_logo.png"), text("Playwright"))
  )
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Selenium*

]

#title-slide[
  Wybrane szczegóły implementacyjne w aplikacji
]

#blank-slide[
  == Dziękujemy za uwagę!
]
