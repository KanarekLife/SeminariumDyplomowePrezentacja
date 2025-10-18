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

// The front slide is the first slide of your presentation
#front-slide(
  title: "Seminarium Dyplomowe Inżynierskie",
  subtitle: [Rozwój portalu wspierającego obsługę rejsów dla biura Armatora Wydział Oceanografii i Geografii UG],
  authors: list(
    [Bartłomiej Krawisz 193319],
    [Paweł Pstrągowski 193473],
    [Stanisław Nieradko 193044]
  )
)

#table-of-contents(title: "Agenda")

#title-slide[
  Informacje o pracy inżynierskiej
]

#slide(title: "Informacje o pracy inżynierskiej")[
  *Temat*: Rozwój portalu wspierającego obsługę rejsów dla biura Armatora Wydział Oceanografii i Geografii UG

  *Promotor*: dr inż. Krzysztof Manuszewski

  *Skład zespołu*: #list(
    [Bartłomiej Krawisz 193319],
    [Paweł Pstrągowski 193473],
    [Stanisław Nieradko 193044]
  )
]

#title-slide[
  Cel pracy i wdrożone zmiany
]

#slide(title: "Cel pracy")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 20pt,
    [
      #set text(size: 18pt)
      - Celem projektu inżynierskiego jest naprawa, rozszerzenie oraz implementacja funkcjonalnych wymagań związanych z realizacją portalu dla Biura Armatora UG nazywanego później "ResearchCruiseApp".
  - Sama aplikacja powstała w ramach ubiegłorocznego projektu grupowego oraz następnie kontynuowana jako praca inżynierska. Wersja 1.1 będąca wynikiem tych prac została wdrożona na środowisko produkcyjne w grudniu 2024.
  - Kontynuacja prac została podjęta przez nasz zespoł początkowo w ramach projektu grupowego oraz jest kontynuowana jako praca inżynierska.
  ],
    image("imgs/bg.png")
  )
]

#slide(title: "Wdrożone zmiany")[
  Do najważniejszych zadań naszego zespołu należały:
  - Implementacja Formularza C
  - Implementacja testów automatycznych umożliwiających łatwiejsze testowanie, wstępnie warstwy frontend, a w przyszłości pełnego systemu
  - Naprawa lub rozszerzanie aktualnie zaimplementowanych funkcjonalności: większe możliwości zarządzania użytkownikami platformy, naprawa modułu uwierzytelniania, naprawa komunikacji z warstwą API w przypadku utraty połączenia z internetem
  - Refaktoryzacja warstwy frontend polegająca na ulepszeniu zarówno User Experience (UX) jak i Development Experience (DX)
  - Implementacja nowych funkcjonalności zgodnie z wymaganiami zebranymi od użytkowników platformy
]

#slide(title: "Wdrożone zmiany - Formularz C")[
  - W ramach aplikacji istnieje koncept formularzy wypełnianych przez naukowców starających się o rejs w ramach Biura Armatora. Formularz C był ostatnim z formularzy wymaganych w aplikacji i, z uwagi na ograniczenia czasowe, nie był zaimplementowany przed wdrożeniem aplikacji przez poprzedni zespół deweloperski.

  #image("imgs/formularz_c (1).png")
  #image("imgs/formularz_c (2).png")
  #image("imgs/formularz_c (3).png")
  #image("imgs/formularz_c (4).png")
  #image("imgs/formularz_c (5).png")
  #image("imgs/formularz_c (6).png")
]

#slide(title: "Wdrożone zmiany - Testy Automatyczne")[
  - Z uwagi na duże zmiany po stronie frontendu aplikacji podjęta była decyzja o potrzebie zdefiniowana oraz rozpisania testów automatycznych umożliwiających ochronę przed regresjami w procesie deweloperskim.
  - Testy zrealizowane zostały przy użyciu technologii `Playwright` w języku `TypeScript`.
  - W początkowej wersji założyliśmy powstanie jedynie testów pokrywających warstwę frontend aplikacji oraz zastosowanie mocków w celu symulowania konkretnych odpowiedzi od strony backend'u.
  - Kolejnym możliwym rozwojem testów jest ich implementacja również po stronie backendu.

  #align(center, image("imgs/testy_auto2.png"))

  - Po zaimplementowaniu, testy automatyczne zostały również dodane do CI projektu na Github Workflow.

  #align(center, image("imgs/testy_gh_workflow.png", height: 80%))
]

#slide(title: "Wdrożone zmiany - usprawnianie istniejących funkcjonalności")[
  - Zwiększenie możliwości modyfikacji istniejących użytkowników z poziomu aplikacji
  #align(center, image("imgs/user_crud.png", height: 80%))

  - Rozbudowanie możliwości filtrowania oraz sortowania wyświetlanych danych w aplikacji
  #align(center, image("imgs/table_helpers.png", height: 80%))

  - Rozbudowa aplikacji o informacje o statusie połączenia z warstwą API oraz możliwość automatycznego ponownego połączenia i kontynuowania pracy w razie problemów z łącznością
  #align(center, image("imgs/network_detection.png", height: 70%))
]

#slide(title: "Wdrożone zmiany - usprawnienia UX / DX")[
  #align(center, image("imgs/ux_1.png"))
  #align(center, image("imgs/ux_2.png"))
  #align(center, image("imgs/ux_3.png"))
  #align(center, image("imgs/ux_4.png"))
  #align(center, image("imgs/ux_5.png"))
  #align(center, image("imgs/ux_6.png"))
  #align(center, image("imgs/ux_7.png"))
]

#slide(title: "Wdrożone zmiany - nowe funkcjonalności")[
  // TODO
]

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
  Aktualny stan pracy
]

#slide(title: "Aktualny stan pracy")[
  - Większość prac związanych z nowymi funkcjonalnościami dobiegła końca.
  - Testy automatyczne zgodnie z planem zostały wdrożone do projektu oraz pipeline'u CI.
  - Aktualnie zajmujemy się:
    - Wdrażaniem nowej wersji na środowisko klienta
    - Wprowadzaniem nowego zespołu, który ma przejąć obowiązek utrzymywania aplikacji
    - Opisywaniem naszego projektu w pracy inżynierskiej.
]

#blank-slide[
  == Dziękujemy za uwagę!
]